.class Lcom/android/ex/photo/PhotoViewActivity$6;
.super Ljava/lang/Object;
.source "PhotoViewActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/photo/PhotoViewActivity;->initTemporaryImage(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/photo/PhotoViewActivity;

.field final synthetic val$base:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/ex/photo/PhotoViewActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/android/ex/photo/PhotoViewActivity$6;->this$0:Lcom/android/ex/photo/PhotoViewActivity;

    iput-object p2, p0, Lcom/android/ex/photo/PhotoViewActivity$6;->val$base:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 1008
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1009
    .local v0, version:I
    #v0=(Integer);
    const/16 v1, 0x10

    #v1=(PosByte);
    if-lt v0, v1, :cond_0

    .line 1010
    iget-object v1, p0, Lcom/android/ex/photo/PhotoViewActivity$6;->val$base:Landroid/view/View;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1014
    :goto_0
    iget-object v1, p0, Lcom/android/ex/photo/PhotoViewActivity$6;->this$0:Lcom/android/ex/photo/PhotoViewActivity;

    invoke-static {v1}, Lcom/android/ex/photo/PhotoViewActivity;->access$200(Lcom/android/ex/photo/PhotoViewActivity;)V

    .line 1015
    return-void

    .line 1012
    :cond_0
    #v1=(PosByte);
    iget-object v1, p0, Lcom/android/ex/photo/PhotoViewActivity$6;->val$base:Landroid/view/View;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
