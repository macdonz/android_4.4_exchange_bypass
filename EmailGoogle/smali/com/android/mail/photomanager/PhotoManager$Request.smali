.class public final Lcom/android/mail/photomanager/PhotoManager$Request;
.super Ljava/lang/Object;
.source "PhotoManager.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/photomanager/PhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/mail/photomanager/PhotoManager$Request;",
        ">;"
    }
.end annotation


# instance fields
.field public attempts:I

.field public final bitmapKey:Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;

.field private final mDefaultProvider:Lcom/android/mail/photomanager/PhotoManager$DefaultImageProvider;

.field private final mPhotoIdentifier:Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;

.field private final mRequestedExtent:I

.field private final mView:Lcom/android/mail/ui/ImageCanvas;

.field final synthetic this$0:Lcom/android/mail/photomanager/PhotoManager;

.field public final viewGeneration:I


# direct methods
.method private constructor <init>(Lcom/android/mail/photomanager/PhotoManager;Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;Lcom/android/mail/photomanager/PhotoManager$DefaultImageProvider;Lcom/android/mail/ui/ImageCanvas;Lcom/android/mail/ui/ImageCanvas$Dimensions;)V
    .locals 1
    .parameter
    .parameter "photoIdentifier"
    .parameter "defaultProvider"
    .parameter "view"
    .parameter "dimensions"

    .prologue
    .line 904
    iput-object p1, p0, Lcom/android/mail/photomanager/PhotoManager$Request;->this$0:Lcom/android/mail/photomanager/PhotoManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 905
    #p0=(Reference);
    iput-object p2, p0, Lcom/android/mail/photomanager/PhotoManager$Request;->mPhotoIdentifier:Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;

    .line 906
    const/4 v0, -0x1

    #v0=(Byte);
    iput v0, p0, Lcom/android/mail/photomanager/PhotoManager$Request;->mRequestedExtent:I

    .line 907
    iput-object p3, p0, Lcom/android/mail/photomanager/PhotoManager$Request;->mDefaultProvider:Lcom/android/mail/photomanager/PhotoManager$DefaultImageProvider;

    .line 908
    iput-object p4, p0, Lcom/android/mail/photomanager/PhotoManager$Request;->mView:Lcom/android/mail/ui/ImageCanvas;

    .line 909
    invoke-interface {p4}, Lcom/android/mail/ui/ImageCanvas;->getGeneration()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/photomanager/PhotoManager$Request;->viewGeneration:I

    .line 911
    iget-object v0, p0, Lcom/android/mail/photomanager/PhotoManager$Request;->mView:Lcom/android/mail/ui/ImageCanvas;

    #v0=(Reference);
    invoke-static {p2, v0, p5}, Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;->getBitmapKey(Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;Lcom/android/mail/ui/ImageCanvas;Lcom/android/mail/ui/ImageCanvas$Dimensions;)Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/photomanager/PhotoManager$Request;->bitmapKey:Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;

    .line 912
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/photomanager/PhotoManager;Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;Lcom/android/mail/photomanager/PhotoManager$DefaultImageProvider;Lcom/android/mail/ui/ImageCanvas;Lcom/android/mail/ui/ImageCanvas$Dimensions;Lcom/android/mail/photomanager/PhotoManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 893
    invoke-direct/range {p0 .. p5}, Lcom/android/mail/photomanager/PhotoManager$Request;-><init>(Lcom/android/mail/photomanager/PhotoManager;Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;Lcom/android/mail/photomanager/PhotoManager$DefaultImageProvider;Lcom/android/mail/ui/ImageCanvas;Lcom/android/mail/ui/ImageCanvas$Dimensions;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public applyDefaultImage()V
    .locals 4

    .prologue
    .line 971
    iget-object v0, p0, Lcom/android/mail/photomanager/PhotoManager$Request;->mView:Lcom/android/mail/ui/ImageCanvas;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/mail/ui/ImageCanvas;->getGeneration()I

    move-result v0

    #v0=(Integer);
    iget v1, p0, Lcom/android/mail/photomanager/PhotoManager$Request;->viewGeneration:I

    #v1=(Integer);
    if-eq v0, v1, :cond_0

    .line 981
    :cond_0
    iget-object v0, p0, Lcom/android/mail/photomanager/PhotoManager$Request;->mDefaultProvider:Lcom/android/mail/photomanager/PhotoManager$DefaultImageProvider;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/photomanager/PhotoManager$Request;->mPhotoIdentifier:Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/photomanager/PhotoManager$Request;->mView:Lcom/android/mail/ui/ImageCanvas;

    #v2=(Reference);
    iget v3, p0, Lcom/android/mail/photomanager/PhotoManager$Request;->mRequestedExtent:I

    #v3=(Integer);
    invoke-interface {v0, v1, v2, v3}, Lcom/android/mail/photomanager/PhotoManager$DefaultImageProvider;->applyDefaultImage(Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;Lcom/android/mail/ui/ImageCanvas;I)V

    .line 982
    return-void
.end method

.method public compareTo(Lcom/android/mail/photomanager/PhotoManager$Request;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 987
    iget v0, p0, Lcom/android/mail/photomanager/PhotoManager$Request;->attempts:I

    #v0=(Integer);
    iget v1, p1, Lcom/android/mail/photomanager/PhotoManager$Request;->attempts:I

    #v1=(Integer);
    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 988
    iget v0, p0, Lcom/android/mail/photomanager/PhotoManager$Request;->attempts:I

    iget v1, p1, Lcom/android/mail/photomanager/PhotoManager$Request;->attempts:I

    sub-int/2addr v0, v1

    .line 990
    :goto_0
    #v1=(Conflicted);
    return v0

    :cond_0
    #v1=(Integer);
    iget-object v0, p0, Lcom/android/mail/photomanager/PhotoManager$Request;->mPhotoIdentifier:Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;

    #v0=(Reference);
    iget-object v1, p1, Lcom/android/mail/photomanager/PhotoManager$Request;->mPhotoIdentifier:Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;->compareTo(Ljava/lang/Object;)I

    move-result v0

    #v0=(Integer);
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 893
    check-cast p1, Lcom/android/mail/photomanager/PhotoManager$Request;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mail/photomanager/PhotoManager$Request;->compareTo(Lcom/android/mail/photomanager/PhotoManager$Request;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 936
    #v2=(Null);
    if-ne p0, p1, :cond_1

    .line 947
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v3=(Conflicted);v4=(Conflicted);
    return v1

    .line 937
    :cond_1
    #v0=(Uninit);v1=(One);v3=(Uninit);v4=(Uninit);
    if-nez p1, :cond_2

    move v1, v2

    #v1=(Null);
    goto :goto_0

    .line 938
    :cond_2
    #v1=(One);
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    #v4=(Reference);
    if-eq v3, v4, :cond_3

    move v1, v2

    #v1=(Null);
    goto :goto_0

    :cond_3
    #v1=(One);
    move-object v0, p1

    .line 939
    #v0=(Reference);
    check-cast v0, Lcom/android/mail/photomanager/PhotoManager$Request;

    .line 940
    .local v0, that:Lcom/android/mail/photomanager/PhotoManager$Request;
    iget v3, p0, Lcom/android/mail/photomanager/PhotoManager$Request;->mRequestedExtent:I

    #v3=(Integer);
    iget v4, v0, Lcom/android/mail/photomanager/PhotoManager$Request;->mRequestedExtent:I

    #v4=(Integer);
    if-eq v3, v4, :cond_4

    move v1, v2

    #v1=(Null);
    goto :goto_0

    .line 941
    :cond_4
    #v1=(One);
    iget-object v3, p0, Lcom/android/mail/photomanager/PhotoManager$Request;->mPhotoIdentifier:Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;

    #v3=(Reference);
    iget-object v4, v0, Lcom/android/mail/photomanager/PhotoManager$Request;->mPhotoIdentifier:Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;

    #v4=(Reference);
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_5

    move v1, v2

    #v1=(Null);
    goto :goto_0

    .line 942
    :cond_5
    #v1=(One);
    iget-object v3, p0, Lcom/android/mail/photomanager/PhotoManager$Request;->mView:Lcom/android/mail/ui/ImageCanvas;

    #v3=(Reference);
    iget-object v4, v0, Lcom/android/mail/photomanager/PhotoManager$Request;->mView:Lcom/android/mail/ui/ImageCanvas;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    move v1, v2

    #v1=(Null);
    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lcom/android/mail/photomanager/PhotoManager$Request;->mPhotoIdentifier:Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoIdentifier()Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/mail/photomanager/PhotoManager$Request;->mPhotoIdentifier:Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;

    #v0=(Reference);
    return-object v0
.end method

.method public getView()Lcom/android/mail/ui/ImageCanvas;
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/mail/photomanager/PhotoManager$Request;->mView:Lcom/android/mail/ui/ImageCanvas;

    #v0=(Reference);
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 931
    iget-object v0, p0, Lcom/android/mail/photomanager/PhotoManager$Request;->this$0:Lcom/android/mail/photomanager/PhotoManager;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/photomanager/PhotoManager$Request;->mPhotoIdentifier:Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/photomanager/PhotoManager$Request;->mView:Lcom/android/mail/ui/ImageCanvas;

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Lcom/android/mail/photomanager/PhotoManager;->getHash(Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;Lcom/android/mail/ui/ImageCanvas;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    const-string v1, "{"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 953
    .local v0, sb:Ljava/lang/StringBuilder;
    #v0=(Reference);
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    const-string v1, " key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    invoke-virtual {p0}, Lcom/android/mail/photomanager/PhotoManager$Request;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 956
    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    iget-object v1, p0, Lcom/android/mail/photomanager/PhotoManager$Request;->mPhotoIdentifier:Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 958
    const-string v1, " mView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    iget-object v1, p0, Lcom/android/mail/photomanager/PhotoManager$Request;->mView:Lcom/android/mail/ui/ImageCanvas;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 960
    const-string v1, " mExtent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    iget v1, p0, Lcom/android/mail/photomanager/PhotoManager$Request;->mRequestedExtent:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 962
    const-string v1, " bitmapKey="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    iget-object v1, p0, Lcom/android/mail/photomanager/PhotoManager$Request;->bitmapKey:Lcom/android/mail/photomanager/PhotoManager$BitmapIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 964
    const-string v1, " viewGeneration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    iget v1, p0, Lcom/android/mail/photomanager/PhotoManager$Request;->viewGeneration:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 966
    const-string v1, "}"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
