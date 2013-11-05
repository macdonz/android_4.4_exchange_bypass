.class public Lcom/android/mail/utils/DrawIdler;
.super Ljava/lang/Object;
.source "DrawIdler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/utils/DrawIdler$1;,
        Lcom/android/mail/utils/DrawIdler$IdleReader;,
        Lcom/android/mail/utils/DrawIdler$IdleListener;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mIdleReader:Lcom/android/mail/utils/DrawIdler$IdleReader;

.field private mListener:Lcom/android/mail/utils/DrawIdler$IdleListener;

.field private mRoot:Landroid/view/View;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput v0, p0, Lcom/android/mail/utils/DrawIdler;->mState:I

    .line 25
    new-instance v0, Lcom/android/mail/utils/DrawIdler$IdleReader;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p0, v1}, Lcom/android/mail/utils/DrawIdler$IdleReader;-><init>(Lcom/android/mail/utils/DrawIdler;Lcom/android/mail/utils/DrawIdler$1;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/utils/DrawIdler;->mIdleReader:Lcom/android/mail/utils/DrawIdler$IdleReader;

    .line 26
    new-instance v0, Landroid/os/Handler;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/utils/DrawIdler;->mHandler:Landroid/os/Handler;

    .line 69
    return-void
.end method

.method static synthetic access$100(Lcom/android/mail/utils/DrawIdler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/mail/utils/DrawIdler;->setState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mail/utils/DrawIdler;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/mail/utils/DrawIdler;->mHandler:Landroid/os/Handler;

    #v0=(Reference);
    return-object v0
.end method

.method private setState(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/mail/utils/DrawIdler;->mState:I

    #v0=(Integer);
    if-ne v0, p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 61
    :cond_1
    #v0=(Integer);
    iput p1, p0, Lcom/android/mail/utils/DrawIdler;->mState:I

    .line 62
    iget-object v0, p0, Lcom/android/mail/utils/DrawIdler;->mListener:Lcom/android/mail/utils/DrawIdler$IdleListener;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/mail/utils/DrawIdler;->mListener:Lcom/android/mail/utils/DrawIdler$IdleListener;

    invoke-interface {v0, p0, p1}, Lcom/android/mail/utils/DrawIdler$IdleListener;->onStateChanged(Lcom/android/mail/utils/DrawIdler;I)V

    goto :goto_0
.end method


# virtual methods
.method public setListener(Lcom/android/mail/utils/DrawIdler$IdleListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/mail/utils/DrawIdler;->mListener:Lcom/android/mail/utils/DrawIdler$IdleListener;

    .line 34
    iget-object v0, p0, Lcom/android/mail/utils/DrawIdler;->mListener:Lcom/android/mail/utils/DrawIdler$IdleListener;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/android/mail/utils/DrawIdler;->mListener:Lcom/android/mail/utils/DrawIdler$IdleListener;

    iget v1, p0, Lcom/android/mail/utils/DrawIdler;->mState:I

    #v1=(Integer);
    invoke-interface {v0, p0, v1}, Lcom/android/mail/utils/DrawIdler$IdleListener;->onStateChanged(Lcom/android/mail/utils/DrawIdler;I)V

    .line 37
    :cond_0
    #v1=(Conflicted);
    return-void
.end method

.method public setRootView(Landroid/view/View;)V
    .locals 2
    .parameter "rootView"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/mail/utils/DrawIdler;->mRoot:Landroid/view/View;

    #v0=(Reference);
    if-ne v0, p1, :cond_1

    .line 51
    :cond_0
    :goto_0
    #v1=(Conflicted);
    return-void

    .line 42
    :cond_1
    #v1=(Uninit);
    iget-object v0, p0, Lcom/android/mail/utils/DrawIdler;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 43
    iget-object v0, p0, Lcom/android/mail/utils/DrawIdler;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/utils/DrawIdler;->mIdleReader:Lcom/android/mail/utils/DrawIdler$IdleReader;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 46
    :cond_2
    #v1=(Conflicted);
    iput-object p1, p0, Lcom/android/mail/utils/DrawIdler;->mRoot:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/android/mail/utils/DrawIdler;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/mail/utils/DrawIdler;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/utils/DrawIdler;->mIdleReader:Lcom/android/mail/utils/DrawIdler$IdleReader;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method
