.class Lcom/android/ex/photo/PhotoViewActivity$2;
.super Ljava/lang/Object;
.source "PhotoViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/photo/PhotoViewActivity;->runEnterAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/photo/PhotoViewActivity;


# direct methods
.method constructor <init>(Lcom/android/ex/photo/PhotoViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 831
    iput-object p1, p0, Lcom/android/ex/photo/PhotoViewActivity$2;->this$0:Lcom/android/ex/photo/PhotoViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/android/ex/photo/PhotoViewActivity$2;->this$0:Lcom/android/ex/photo/PhotoViewActivity;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/ex/photo/PhotoViewActivity;->onEnterAnimationComplete()V

    .line 835
    return-void
.end method
