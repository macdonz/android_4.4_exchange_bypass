.class public Lcom/android/mail/ui/SwipeableItemView$SwipeableView;
.super Ljava/lang/Object;
.source "SwipeableItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/SwipeableItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SwipeableView"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/mail/ui/SwipeableItemView$SwipeableView;->mView:Landroid/view/View;

    .line 48
    return-void
.end method

.method public static from(Landroid/view/View;)Lcom/android/mail/ui/SwipeableItemView$SwipeableView;
    .locals 1
    .parameter "view"

    .prologue
    .line 41
    const/4 v0, 0x1

    #v0=(One);
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 42
    new-instance v0, Lcom/android/mail/ui/SwipeableItemView$SwipeableView;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/mail/ui/SwipeableItemView$SwipeableView;-><init>(Landroid/view/View;)V

    #v0=(Reference);
    return-object v0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/mail/ui/SwipeableItemView$SwipeableView;->mView:Landroid/view/View;

    #v0=(Reference);
    return-object v0
.end method
