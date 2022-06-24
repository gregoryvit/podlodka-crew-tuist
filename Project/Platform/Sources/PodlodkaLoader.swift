import UIKit
import SnapKit
import Lottie

public final class PodlodkaLoader: UIView {

    private lazy var imageView: UIImageView = {
        UIImageView(image: PlatformAsset.podlodka.image)
    }()

    private lazy var loader: AnimationView = {
        let view = AnimationView(animation: LottieAnimations.loader.animation)
        view.loopMode = .autoReverse
        return view
    }()

    override public init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }

    private func setupView() {
        addSubview(loader)
        addSubview(imageView)

        accessibilityLabel = PlatformStrings.mainTitle

        loader.snp.makeConstraints { make in
            make.center.equalTo(imageView)
            make.size.equalTo(self)
        }

        imageView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.size.equalTo(loader).multipliedBy(0.33)
        }
    }

    public func play() {
        loader.play()
    }

    public func pause() {
        loader.pause()
    }
}
