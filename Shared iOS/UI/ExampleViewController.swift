//
//  Created by Stefan Nebel on 14.06.20.
//  Copyright © 2020 Best-iOS-Apps. All rights reserved.
//

import UIKit

class ExampleViewController: UIViewController {

  private let viewModel: ViewModel

  init(viewModel: ViewModel) {
    self.viewModel = viewModel
    super.init(nibName: nil, bundle: nil)
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    let label = UILabel()
    label.text = "\(viewModel.deviceName)\n(\(viewModel.modelName))"
    label.numberOfLines = 2
    label.textColor = .white
    label.textAlignment = .center
    label.frame = view.frame
    label.center = view.center
    label.translatesAutoresizingMaskIntoConstraints = true
    view.addSubview(label)
    view.backgroundColor = .black

    viewModel.deviceInfos.forEach({ print($0) })
  }
}
