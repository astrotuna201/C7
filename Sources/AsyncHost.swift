public protocol AsyncHost {
    func accept(timingOut deadline: Double, completion: @escaping ((Void) throws -> AsyncStream) -> Void)
}

extension AsyncHost {
    public func accept(completion: @escaping ((Void) throws -> AsyncStream) -> Void) {
        accept(timingOut: .never, completion: completion)
    }
}
