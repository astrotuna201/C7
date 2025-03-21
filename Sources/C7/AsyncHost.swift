public protocol AsyncHost {
    func accept(timingOut deadline: Double, completion: @escaping (() throws -> AsyncStream) -> Void)
}

extension AsyncHost {
    public func accept(completion: @escaping (() throws -> AsyncStream) -> Void) {
        accept(timingOut: .never, completion: completion)
    }
}
