.class Lcom/android/mail/ui/SwipeHelper$2;
.super Ljava/lang/Object;
.source "SwipeHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$canAnimViewBeDismissed:Z


# direct methods
.method constructor <init>(Lcom/android/mail/ui/SwipeHelper;ZLandroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/mail/ui/SwipeHelper$2;->this$0:Lcom/android/mail/ui/SwipeHelper;

    iput-boolean p2, p0, Lcom/android/mail/ui/SwipeHelper$2;->val$canAnimViewBeDismissed:Z

    iput-object p3, p0, Lcom/android/mail/ui/SwipeHelper$2;->val$animView:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/android/mail/ui/SwipeHelper$2;->val$canAnimViewBeDismissed:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/mail/ui/SwipeHelper$2;->val$animView:Landroid/view/View;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/SwipeHelper$2;->this$0:Lcom/android/mail/ui/SwipeHelper;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/ui/SwipeHelper$2;->val$animView:Landroid/view/View;

    #v2=(Reference);
    invoke-static {v1, v2}, Lcom/android/mail/ui/SwipeHelper;->access$200(Lcom/android/mail/ui/SwipeHelper;Landroid/view/View;)F

    move-result v1

    #v1=(Float);
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 287
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/ui/SwipeHelper$2;->val$animView:Landroid/view/View;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    .line 288
    return-void
.end method
