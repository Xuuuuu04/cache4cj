package cache4cj

import std.sync.*

/**
 * 清理器类
 * 定期清理过期的缓存项
 */
public class Janitor<T> {
    // 清理间隔
    var interval: Duration

    // 停止信号
    var stopSignal: Array<Bool> = [false]

    // 缓存引用
    var cache: Cache<T>

    // 运行标志
    var running: AtomicBool

    /**
     * 构造函数
     * @param cache 要清理的缓存对象
     * @param intv 清理间隔
     */
    public init(cache: Cache<T>, intv: Duration) {
        this.cache = cache
        this.interval = intv
        this.running = AtomicBool(v: false)
    }

    /**
     * 启动清理器
     */
    public func start(): Unit {
        if (running.load()) {
            return
        }
        running.store(true)
        stopSignal[0] = false

        // 在独立线程中运行清理循环
        spawn {
            run()
        }
    }

    /**
     * 停止清理器
     */
    public func stop(): Unit {
        if (!running.load()) {
            return
        }
        stopSignal[0] = true
        running.store(false)
    }

    /**
     * 清理器主循环
     */
    func run(): Unit {
        while (running.load() && !stopSignal[0]) {
            sleep(this.interval)

            if (stopSignal[0]) {
                break
            }

            // 清理过期项
            this.cache.deleteExpired()
        }
    }
}

/**
 * 原子布尔类型包装
 * 用于线程安全的布尔标志
 */
public class AtomicBool {
    var value: Bool = false
    let mutex: Mutex = Mutex()

    public init(v!: Bool = false) {
        value = v
    }

    public func load(): Bool {
        synchronized(mutex) {
            value
        }
    }

    public func store(v: Bool): Unit {
        synchronized(mutex) {
            value = v
        }
    }
}
