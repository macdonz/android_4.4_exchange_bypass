.class public Lcom/android/mail/browse/MessageView;
.super Lcom/android/mail/browse/MailWebView;
.source "MessageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 14
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/browse/MessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 18
    #v1=(One);
    invoke-direct {p0, p1, p2}, Lcom/android/mail/browse/MailWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    #p0=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 21
    .local v0, settings:Landroid/webkit/WebSettings;
    #v0=(Reference);
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 22
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 23
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 24
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 25
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 26
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 30
    const/4 v0, 0x1

    #v0=(One);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageView;->requestDisallowInterceptTouchEvent(Z)V

    .line 31
    invoke-super {p0, p1}, Lcom/android/mail/browse/MailWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method
