.class public Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;
.super Ljava/lang/Object;
.source "PhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/photomanager/PhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BitmapHolder"
.end annotation


# instance fields
.field bytes:[B

.field volatile fresh:Z

.field height:I

.field width:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1
    .parameter "bytes"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 144
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 145
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;->bytes:[B

    .line 146
    iput p2, p0, Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;->width:I

    .line 147
    iput p3, p0, Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;->height:I

    .line 148
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;->fresh:Z

    .line 149
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    const-string v1, "{"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, sb:Ljava/lang/StringBuilder;
    #v0=(Reference);
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, " bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-object v1, p0, Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;->bytes:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-object v1, p0, Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;->bytes:[B

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, " width="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget v1, p0, Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;->width:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, " height="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget v1, p0, Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;->height:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, " fresh="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-boolean v1, p0, Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;->fresh:Z

    #v1=(Boolean);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 165
    const-string v1, "}"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/android/mail/photomanager/PhotoManager$BitmapHolder;->bytes:[B

    array-length v1, v1

    #v1=(Integer);
    goto :goto_0
.end method
