.class Lcom/android/mail/ui/ButteryProgressBar$ExponentialInterpolator;
.super Ljava/lang/Object;
.source "ButteryProgressBar.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/ButteryProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExponentialInterpolator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/ui/ButteryProgressBar$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/android/mail/ui/ButteryProgressBar$ExponentialInterpolator;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .parameter "input"

    .prologue
    .line 175
    const-wide/high16 v0, 0x4000

    #v0=(LongLo);v1=(LongHi);
    float-to-double v2, p1

    #v2=(DoubleLo);v3=(DoubleHi);
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    #v0=(DoubleLo);v1=(DoubleHi);
    double-to-float v0, v0

    #v0=(Float);
    const/high16 v1, 0x3f80

    #v1=(Integer);
    sub-float/2addr v0, v1

    return v0
.end method
