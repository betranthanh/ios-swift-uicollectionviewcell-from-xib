
### 1. Add UICollectionView into your view

- Set datasource and delegate for your collectionView 
<img src="http://i.imgur.com/Dzd48hD.png" width="150px">

### 2. Create your collectionview cell: MyCollectionViewCell.swift & MyCollectionViewCell.xib
- Set Identifier value 
<img src="http://i.imgur.com/qLWXu2z.png" width="150px">


### 3. Let start to add some code

>##### 1. Create Identifier for your cell
```swift
let MyCollectionViewCellId: String = "MyCollectionViewCell"
```

>##### 2. Register your cell
```swift
let nibCell = UINib(nibName: MyCollectionViewCellId, bundle: nil)
collectionView.register(nibCell, forCellWithReuseIdentifier: MyCollectionViewCellId)
```
>##### 3. Add some functions for your collectionView*
```swift
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize.init(width: UIScreen.main.bounds.width - 20, height: 80)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCellId, for: indexPath) as! MyCollectionViewCell
        
        
        return cell
    }
}
```
