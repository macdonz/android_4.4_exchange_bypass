.class Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorCompatKitKatImpl;
.super Ljava/lang/Object;
.source "ScaleGestureDetectorCompat.java"

# interfaces
.implements Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ScaleGestureDetectorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaleGestureDetectorCompatKitKatImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/ScaleGestureDetectorCompat$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorCompatKitKatImpl;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public isQuickScaleEnabled(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 53
    invoke-static {p1}, Landroid/support/v4/view/ScaleGestureDetectorCompatKitKat;->isQuickScaleEnabled(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method
