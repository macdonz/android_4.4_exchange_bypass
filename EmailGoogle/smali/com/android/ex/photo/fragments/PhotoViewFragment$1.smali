.class synthetic Lcom/android/ex/photo/fragments/PhotoViewFragment$1;
.super Ljava/lang/Object;
.source "PhotoViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/photo/fragments/PhotoViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$ex$photo$util$ImageUtils$ImageSize:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 192
    invoke-static {}, Lcom/android/ex/photo/util/ImageUtils$ImageSize;->values()[Lcom/android/ex/photo/util/ImageUtils$ImageSize;

    move-result-object v0

    #v0=(Reference);
    array-length v0, v0

    #v0=(Integer);
    new-array v0, v0, [I

    #v0=(Reference);
    sput-object v0, Lcom/android/ex/photo/fragments/PhotoViewFragment$1;->$SwitchMap$com$android$ex$photo$util$ImageUtils$ImageSize:[I

    :try_start_0
    sget-object v0, Lcom/android/ex/photo/fragments/PhotoViewFragment$1;->$SwitchMap$com$android$ex$photo$util$ImageUtils$ImageSize:[I

    sget-object v1, Lcom/android/ex/photo/util/ImageUtils$ImageSize;->EXTRA_SMALL:Lcom/android/ex/photo/util/ImageUtils$ImageSize;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/ex/photo/util/ImageUtils$ImageSize;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v0, Lcom/android/ex/photo/fragments/PhotoViewFragment$1;->$SwitchMap$com$android$ex$photo$util$ImageUtils$ImageSize:[I

    sget-object v1, Lcom/android/ex/photo/util/ImageUtils$ImageSize;->SMALL:Lcom/android/ex/photo/util/ImageUtils$ImageSize;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/ex/photo/util/ImageUtils$ImageSize;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x2

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v0, Lcom/android/ex/photo/fragments/PhotoViewFragment$1;->$SwitchMap$com$android$ex$photo$util$ImageUtils$ImageSize:[I

    sget-object v1, Lcom/android/ex/photo/util/ImageUtils$ImageSize;->NORMAL:Lcom/android/ex/photo/util/ImageUtils$ImageSize;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/ex/photo/util/ImageUtils$ImageSize;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x3

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    #v1=(Conflicted);v2=(Conflicted);
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method