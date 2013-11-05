.class public Landroid/support/v7/widget/GridLayout$Spec;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation


# static fields
.field static final UNDEFINED:Landroid/support/v7/widget/GridLayout$Spec;


# instance fields
.field final alignment:Landroid/support/v7/widget/GridLayout$Alignment;

.field final span:Landroid/support/v7/widget/GridLayout$Interval;

.field final startDefined:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2281
    const/high16 v0, -0x8000

    #v0=(Integer);
    invoke-static {v0}, Landroid/support/v7/widget/GridLayout;->spec(I)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Landroid/support/v7/widget/GridLayout$Spec;->UNDEFINED:Landroid/support/v7/widget/GridLayout$Spec;

    return-void
.end method

.method private constructor <init>(ZIILandroid/support/v7/widget/GridLayout$Alignment;)V
    .locals 2
    .parameter "startDefined"
    .parameter "start"
    .parameter "size"
    .parameter "alignment"

    .prologue
    .line 2294
    new-instance v0, Landroid/support/v7/widget/GridLayout$Interval;

    #v0=(UninitRef);
    add-int v1, p2, p3

    #v1=(Integer);
    invoke-direct {v0, p2, v1}, Landroid/support/v7/widget/GridLayout$Interval;-><init>(II)V

    #v0=(Reference);
    invoke-direct {p0, p1, v0, p4}, Landroid/support/v7/widget/GridLayout$Spec;-><init>(ZLandroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$Alignment;)V

    .line 2295
    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(ZIILandroid/support/v7/widget/GridLayout$Alignment;Landroid/support/v7/widget/GridLayout$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 2280
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayout$Spec;-><init>(ZIILandroid/support/v7/widget/GridLayout$Alignment;)V

    #p0=(Reference);
    return-void
.end method

.method private constructor <init>(ZLandroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$Alignment;)V
    .locals 0
    .parameter "startDefined"
    .parameter "span"
    .parameter "alignment"

    .prologue
    .line 2287
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2288
    #p0=(Reference);
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayout$Spec;->startDefined:Z

    .line 2289
    iput-object p2, p0, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 2290
    iput-object p3, p0, Landroid/support/v7/widget/GridLayout$Spec;->alignment:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2291
    return-void
.end method


# virtual methods
.method final copyWriteSpan(Landroid/support/v7/widget/GridLayout$Interval;)Landroid/support/v7/widget/GridLayout$Spec;
    .locals 3
    .parameter "span"

    .prologue
    .line 2298
    new-instance v0, Landroid/support/v7/widget/GridLayout$Spec;

    #v0=(UninitRef);
    iget-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Spec;->startDefined:Z

    #v1=(Boolean);
    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$Spec;->alignment:Landroid/support/v7/widget/GridLayout$Alignment;

    #v2=(Reference);
    invoke-direct {v0, v1, p1, v2}, Landroid/support/v7/widget/GridLayout$Spec;-><init>(ZLandroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$Alignment;)V

    #v0=(Reference);
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "that"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 2321
    #v2=(Null);
    if-ne p0, p1, :cond_1

    .line 2338
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v3=(Conflicted);v4=(Conflicted);
    return v1

    .line 2324
    :cond_1
    #v0=(Uninit);v1=(One);v3=(Uninit);v4=(Uninit);
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    #v4=(Reference);
    if-eq v3, v4, :cond_3

    :cond_2
    #v3=(Conflicted);v4=(Conflicted);
    move v1, v2

    .line 2325
    #v1=(Null);
    goto :goto_0

    :cond_3
    #v1=(One);v3=(Reference);v4=(Reference);
    move-object v0, p1

    .line 2328
    #v0=(Reference);
    check-cast v0, Landroid/support/v7/widget/GridLayout$Spec;

    .line 2330
    .local v0, spec:Landroid/support/v7/widget/GridLayout$Spec;
    iget-object v3, p0, Landroid/support/v7/widget/GridLayout$Spec;->alignment:Landroid/support/v7/widget/GridLayout$Alignment;

    iget-object v4, v0, Landroid/support/v7/widget/GridLayout$Spec;->alignment:Landroid/support/v7/widget/GridLayout$Alignment;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_4

    move v1, v2

    .line 2331
    #v1=(Null);
    goto :goto_0

    .line 2334
    :cond_4
    #v1=(One);
    iget-object v3, p0, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    #v3=(Reference);
    iget-object v4, v0, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/GridLayout$Interval;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    move v1, v2

    .line 2335
    #v1=(Null);
    goto :goto_0
.end method

.method final getFlexibility()I
    .locals 2

    .prologue
    .line 2306
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Spec;->alignment:Landroid/support/v7/widget/GridLayout$Alignment;

    #v0=(Reference);
    sget-object v1, Landroid/support/v7/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/support/v7/widget/GridLayout$Alignment;

    #v1=(Reference);
    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    #v0=(PosByte);
    return v0

    :cond_0
    #v0=(Reference);
    const/4 v0, 0x2

    #v0=(PosByte);
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 2343
    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayout$Interval;->hashCode()I

    move-result v0

    .line 2344
    .local v0, result:I
    #v0=(Integer);
    mul-int/lit8 v1, v0, 0x1f

    #v1=(Integer);
    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$Spec;->alignment:Landroid/support/v7/widget/GridLayout$Alignment;

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    #v2=(Integer);
    add-int v0, v1, v2

    .line 2345
    return v0
.end method
