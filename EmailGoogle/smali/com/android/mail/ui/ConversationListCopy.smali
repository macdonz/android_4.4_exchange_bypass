.class public Lcom/android/mail/ui/ConversationListCopy;
.super Landroid/view/View;
.source "ConversationListCopy.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/ConversationListCopy;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 42
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/ConversationListCopy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "c"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationListCopy;->unbind()V

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    #v1=(Integer);
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-nez v1, :cond_1

    .line 78
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 72
    :cond_1
    :try_start_0
    #v0=(Uninit);v1=(Integer);v2=(Uninit);v3=(Uninit);
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    #v2=(Integer);
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #v3=(Reference);
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/ui/ConversationListCopy;->mBitmap:Landroid/graphics/Bitmap;

    .line 73
    new-instance v1, Landroid/graphics/Canvas;

    #v1=(UninitRef);
    iget-object v2, p0, Lcom/android/mail/ui/ConversationListCopy;->mBitmap:Landroid/graphics/Bitmap;

    #v2=(Reference);
    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #v1=(Reference);
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/OutOfMemoryError;
    #v0=(Reference);
    sget-object v1, Lcom/android/mail/ui/ConversationListCopy;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    const-string v2, "Unable to create fancy list transition bitmap"

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 51
    #v2=(Null);
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListCopy;->mBitmap:Landroid/graphics/Bitmap;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 55
    :goto_0
    #v1=(Conflicted);
    return-void

    .line 54
    :cond_0
    #v1=(Uninit);
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListCopy;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListCopy;->mBitmap:Landroid/graphics/Bitmap;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListCopy;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 86
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/mail/ui/ConversationListCopy;->mBitmap:Landroid/graphics/Bitmap;

    .line 88
    :cond_0
    #v0=(Reference);
    return-void
.end method
