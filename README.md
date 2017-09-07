# NavigationAnimation


This is a simple navigation custom transition animation.

### The Basic Step 

- Create a class conform the protocol `UIViewControllerAnimatedTransitioning`

```
extension NavAnimationController: UINavigationControllerDelegate {
  
}
```

- Implement the protocol method 

```
   func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        ...
   }
    
   func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return XPAnimationDuration
   }
```


- In `animateTransition(using transitionContext: UIViewControllerContextTransitioning)` method ,have several basic steps:
1. Get all view or ViewController that transition needed;(If needed, you should create a snapshot view for accessory animation)
2. Add those View to container;
3. Initialize animation Frame
4. Animation
5. Tell transitionContext result

