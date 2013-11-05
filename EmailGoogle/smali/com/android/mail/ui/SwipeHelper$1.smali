.class Lcom/android/mail/ui/SwipeHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/SwipeHelper;->dismissChild(Lcom/android/mail/ui/SwipeableItemView;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/SwipeHelper;

.field final synthetic val$animView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/SwipeHelper;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/mail/ui/SwipeHelper$1;->this$0:Lcom/android/mail/ui/SwipeHelper;

    iput-object p2, p0, Lcom/android/mail/ui/SwipeHelper$1;->val$animView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/mail/ui/SwipeHelper$1;->this$0:Lcom/android/mail/ui/SwipeHelper;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/SwipeHelper;->access$100(Lcom/android/mail/ui/SwipeHelper;)Lcom/android/mail/ui/SwipeHelper$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/SwipeHelper$1;->this$0:Lcom/android/mail/ui/SwipeHelper;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/ui/SwipeHelper;->access$000(Lcom/android/mail/ui/SwipeHelper;)Lcom/android/mail/ui/SwipeableItemView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/mail/ui/SwipeHelper$Callback;->onChildDismissed(Lcom/android/mail/ui/SwipeableItemView;)V

    .line 278
    iget-object v0, p0, Lcom/android/mail/ui/SwipeHelper$1;->val$animView:Landroid/view/View;

    const/4 v1, 0x0

    #v1=(Null);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 279
    return-void
.end method
