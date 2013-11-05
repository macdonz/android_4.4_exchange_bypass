.class public Lcom/android/mail/photomanager/ContactPhotoManager$ContactIdentifier;
.super Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/photomanager/ContactPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactIdentifier"
.end annotation


# instance fields
.field public final emailAddress:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final pos:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "name"
    .parameter "emailAddress"
    .parameter "pos"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;-><init>()V

    .line 109
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/mail/photomanager/ContactPhotoManager$ContactIdentifier;->name:Ljava/lang/String;

    .line 110
    iput-object p2, p0, Lcom/android/mail/photomanager/ContactPhotoManager$ContactIdentifier;->emailAddress:Ljava/lang/String;

    .line 111
    iput p3, p0, Lcom/android/mail/photomanager/ContactPhotoManager$ContactIdentifier;->pos:I

    .line 112
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;)I
    .locals 1
    .parameter "another"

    .prologue
    .line 162
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    check-cast p1, Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mail/photomanager/ContactPhotoManager$ContactIdentifier;->compareTo(Lcom/android/mail/photomanager/PhotoManager$PhotoIdentifier;)I

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

    .line 135
    #v2=(Null);
    if-ne p0, p1, :cond_1

    .line 142
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v3=(Conflicted);v4=(Conflicted);
    return v1

    .line 137
    :cond_1
    #v0=(Uninit);v1=(One);v3=(Uninit);v4=(Uninit);
    if-nez p1, :cond_2

    move v1, v2

    .line 138
    #v1=(Null);
    goto :goto_0

    .line 139
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

    .line 140
    #v1=(Null);
    goto :goto_0

    :cond_3
    #v1=(One);
    move-object v0, p1

    .line 141
    #v0=(Reference);
    check-cast v0, Lcom/android/mail/photomanager/ContactPhotoManager$ContactIdentifier;

    .line 142
    .local v0, other:Lcom/android/mail/photomanager/ContactPhotoManager$ContactIdentifier;
    iget-object v3, p0, Lcom/android/mail/photomanager/ContactPhotoManager$ContactIdentifier;->emailAddress:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/mail/photomanager/ContactPhotoManager$ContactIdentifier;->emailAddress:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mail/photomanager/ContactPhotoManager$ContactIdentifier;->name:Ljava/lang/String;

    #v3=(Reference);
    iget-object v4, v0, Lcom/android/mail/photomanager/ContactPhotoManager$ContactIdentifier;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/mail/photomanager/ContactPhotoManager$ContactIdentifier;->pos:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    iget v4, v0, Lcom/android/mail/photomanager/ContactPhotoManager$ContactIdentifier;->pos:I

    #v4=(Integer);
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    #v1=(Null);
    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/mail/photomanager/ContactPhotoManager$ContactIdentifier;->emailAddress:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 126
    #v2=(Null);
    const/16 v0, 0x11

    .line 127
    .local v0, hash:I
    #v0=(PosByte);
    iget-object v1, p0, Lcom/android/mail/photomanager/ContactPhotoManager$ContactIdentifier;->emailAddress:Ljava/lang/String;

    #v1=(Reference);
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mail/photomanager/ContactPhotoManager$ContactIdentifier;->emailAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    #v1=(Integer);
    add-int/lit16 v0, v1, 0x20f

    .line 128
    #v0=(Integer);
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/android/mail/photomanager/ContactPhotoManager$ContactIdentifier;->name:Ljava/lang/String;

    #v3=(Reference);
    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/mail/photomanager/ContactPhotoManager$ContactIdentifier;->name:Ljava/lang/String;

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    #v2=(Integer);
    add-int v0, v1, v2

    .line 129
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/mail/photomanager/ContactPhotoManager$ContactIdentifier;->pos:I

    add-int v0, v1, v2

    .line 130
    return v0

    :cond_1
    #v0=(PosByte);v1=(Reference);v2=(Null);v3=(Uninit);
    move v1, v2

    .line 127
    #v1=(Null);
    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/mail/photomanager/ContactPhotoManager$ContactIdentifier;->emailAddress:Ljava/lang/String;

    #v0=(Reference);
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    const-string v1, "{"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, sb:Ljava/lang/StringBuilder;
    #v0=(Reference);
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object v1, p0, Lcom/android/mail/photomanager/ContactPhotoManager$ContactIdentifier;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, " email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v1, p0, Lcom/android/mail/photomanager/ContactPhotoManager$ContactIdentifier;->emailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, " pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget v1, p0, Lcom/android/mail/photomanager/ContactPhotoManager$ContactIdentifier;->pos:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, "}"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
