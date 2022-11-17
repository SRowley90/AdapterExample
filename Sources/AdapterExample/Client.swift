import Foundation
import Combine

public enum AdapterError: Error {
    case testError
}

public protocol Client {
    var connectionState: AnyPublisher<Bool, Never> { get }

    func connect() -> AnyPublisher<Void, AdapterError>
    func disconnect() -> AnyPublisher<Void, Never>
    func subscribe(to topic: String) -> AnyPublisher<Data, AdapterError>
    func publish(_ value: Data, to topic: String) -> AnyPublisher<Void, AdapterError>
    func publish(_ value: Data, to topic: String) async throws
}
