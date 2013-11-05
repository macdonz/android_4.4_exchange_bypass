.class Lcom/android/mail/ui/ConversationViewFragment$CssScaleInterceptor;
.super Ljava/lang/Object;
.source "ConversationViewFragment.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/ConversationViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CssScaleInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/ConversationViewFragment;


# direct methods
.method private getFocusXWebPx(Landroid/view/ScaleGestureDetector;)F
    .locals 2
    .parameter "detector"

    .prologue
    .line 1544
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    #v0=(Float);
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment$CssScaleInterceptor;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v1=(Reference);
    iget v1, v1, Lcom/android/mail/ui/ConversationViewFragment;->mSideMarginPx:I

    #v1=(Integer);
    int-to-float v1, v1

    #v1=(Float);
    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment$CssScaleInterceptor;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/ui/ConversationViewFragment;->mWebView:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v1}, Lcom/android/mail/browse/ConversationWebView;->getInitialScale()F

    move-result v1

    #v1=(Float);
    div-float/2addr v0, v1

    return v0
.end method

.method private getFocusYWebPx(Landroid/view/ScaleGestureDetector;)F
    .locals 2
    .parameter "detector"

    .prologue
    .line 1548
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v0

    #v0=(Float);
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment$CssScaleInterceptor;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/ui/ConversationViewFragment;->mWebView:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v1}, Lcom/android/mail/browse/ConversationWebView;->getInitialScale()F

    move-result v1

    #v1=(Float);
    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .parameter "detector"

    .prologue
    const/4 v5, 0x0

    .line 1553
    #v5=(Null);
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment$CssScaleInterceptor;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/ui/ConversationViewFragment;->mWebView:Lcom/android/mail/browse/ConversationWebView;

    const-string v1, "javascript:onScale(%s, %s, %s);"

    #v1=(Reference);
    const/4 v2, 0x3

    #v2=(PosByte);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    #v3=(Float);
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v2, v5

    const/4 v3, 0x1

    #v3=(One);
    invoke-direct {p0, p1}, Lcom/android/mail/ui/ConversationViewFragment$CssScaleInterceptor;->getFocusXWebPx(Landroid/view/ScaleGestureDetector;)F

    move-result v4

    #v4=(Float);
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v2, v3

    const/4 v3, 0x2

    #v3=(PosByte);
    invoke-direct {p0, p1}, Lcom/android/mail/ui/ConversationViewFragment$CssScaleInterceptor;->getFocusYWebPx(Landroid/view/ScaleGestureDetector;)F

    move-result v4

    #v4=(Float);
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationWebView;->loadUrl(Ljava/lang/String;)V

    .line 1556
    return v5
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .parameter "detector"

    .prologue
    const/4 v5, 0x1

    .line 1561
    #v5=(One);
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment$CssScaleInterceptor;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/ui/ConversationViewFragment;->mWebView:Lcom/android/mail/browse/ConversationWebView;

    const-string v1, "javascript:onScaleBegin(%s, %s);"

    #v1=(Reference);
    const/4 v2, 0x2

    #v2=(PosByte);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-direct {p0, p1}, Lcom/android/mail/ui/ConversationViewFragment$CssScaleInterceptor;->getFocusXWebPx(Landroid/view/ScaleGestureDetector;)F

    move-result v4

    #v4=(Float);
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v2, v3

    invoke-direct {p0, p1}, Lcom/android/mail/ui/ConversationViewFragment$CssScaleInterceptor;->getFocusYWebPx(Landroid/view/ScaleGestureDetector;)F

    move-result v3

    #v3=(Float);
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationWebView;->loadUrl(Ljava/lang/String;)V

    .line 1563
    return v5
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 5
    .parameter "detector"

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment$CssScaleInterceptor;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/ui/ConversationViewFragment;->mWebView:Lcom/android/mail/browse/ConversationWebView;

    const-string v1, "javascript:onScaleEnd(%s, %s);"

    #v1=(Reference);
    const/4 v2, 0x2

    #v2=(PosByte);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-direct {p0, p1}, Lcom/android/mail/ui/ConversationViewFragment$CssScaleInterceptor;->getFocusXWebPx(Landroid/view/ScaleGestureDetector;)F

    move-result v4

    #v4=(Float);
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v2, v3

    const/4 v3, 0x1

    #v3=(One);
    invoke-direct {p0, p1}, Lcom/android/mail/ui/ConversationViewFragment$CssScaleInterceptor;->getFocusYWebPx(Landroid/view/ScaleGestureDetector;)F

    move-result v4

    #v4=(Float);
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationWebView;->loadUrl(Ljava/lang/String;)V

    .line 1570
    return-void
.end method
