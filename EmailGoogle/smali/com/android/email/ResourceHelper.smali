.class public Lcom/android/email/ResourceHelper;
.super Ljava/lang/Object;
.source "ResourceHelper.java"


# static fields
.field private static sInstance:Lcom/android/email/ResourceHelper;


# instance fields
.field private final mAccountColorArray:Landroid/content/res/TypedArray;

.field private final mAccountColorPaints:[Landroid/graphics/Paint;

.field private final mAccountColors:[I

.field private final mContext:Landroid/content/Context;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const v3, 0x7f0f0018

    .line 38
    #v3=(Integer);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    #p0=(Reference);
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/email/ResourceHelper;->mContext:Landroid/content/Context;

    .line 40
    iget-object v2, p0, Lcom/android/email/ResourceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/ResourceHelper;->mResources:Landroid/content/res/Resources;

    .line 42
    iget-object v2, p0, Lcom/android/email/ResourceHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/ResourceHelper;->mAccountColorArray:Landroid/content/res/TypedArray;

    .line 43
    iget-object v2, p0, Lcom/android/email/ResourceHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/ResourceHelper;->mAccountColors:[I

    .line 44
    iget-object v2, p0, Lcom/android/email/ResourceHelper;->mAccountColors:[I

    array-length v2, v2

    #v2=(Integer);
    new-array v2, v2, [Landroid/graphics/Paint;

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/email/ResourceHelper;->mAccountColorPaints:[Landroid/graphics/Paint;

    .line 45
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    iget-object v2, p0, Lcom/android/email/ResourceHelper;->mAccountColors:[I

    array-length v2, v2

    #v2=(Integer);
    if-ge v0, v2, :cond_0

    .line 46
    new-instance v1, Landroid/graphics/Paint;

    #v1=(UninitRef);
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 47
    .local v1, p:Landroid/graphics/Paint;
    #v1=(Reference);
    iget-object v2, p0, Lcom/android/email/ResourceHelper;->mAccountColors:[I

    #v2=(Reference);
    aget v2, v2, v0

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object v2, p0, Lcom/android/email/ResourceHelper;->mAccountColorPaints:[Landroid/graphics/Paint;

    #v2=(Reference);
    aput-object v1, v2, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    .end local v1           #p:Landroid/graphics/Paint;
    :cond_0
    #v1=(Conflicted);v2=(Integer);
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/ResourceHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 53
    const-class v1, Lcom/android/email/ResourceHelper;

    #v1=(Reference);
    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/ResourceHelper;->sInstance:Lcom/android/email/ResourceHelper;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/android/email/ResourceHelper;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/email/ResourceHelper;-><init>(Landroid/content/Context;)V

    #v0=(Reference);
    sput-object v0, Lcom/android/email/ResourceHelper;->sInstance:Lcom/android/email/ResourceHelper;

    .line 56
    :cond_0
    sget-object v0, Lcom/android/email/ResourceHelper;->sInstance:Lcom/android/email/ResourceHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getAccountColor(J)I
    .locals 2
    .parameter "accountId"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/email/ResourceHelper;->mAccountColors:[I

    #v0=(Reference);
    invoke-virtual {p0, p1, p2}, Lcom/android/email/ResourceHelper;->getAccountColorIndex(J)I

    move-result v1

    #v1=(Integer);
    aget v0, v0, v1

    #v0=(Integer);
    return v0
.end method

.method getAccountColorIndex(J)I
    .locals 4
    .parameter "accountId"

    .prologue
    .line 62
    const-wide/16 v0, 0x1

    #v0=(LongLo);v1=(LongHi);
    sub-long v0, p1, v0

    iget-object v2, p0, Lcom/android/email/ResourceHelper;->mAccountColors:[I

    #v2=(Reference);
    array-length v2, v2

    #v2=(Integer);
    int-to-long v2, v2

    #v2=(LongLo);v3=(LongHi);
    rem-long/2addr v0, v2

    long-to-int v0, v0

    #v0=(Integer);
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method
