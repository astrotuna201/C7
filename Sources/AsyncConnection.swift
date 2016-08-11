public protocol AsyncConnection: AsyncStream {
    func open(timingOut deadline: Double, completion: @escaping ((Void) throws -> AsyncConnection) -> Void) throws
}

extension AsyncConnection {
    public func open(completion: @escaping ((Void) throws -> AsyncConnection) -> Void) throws {
        try open(timingOut: .never, completion: completion)
    }
}
