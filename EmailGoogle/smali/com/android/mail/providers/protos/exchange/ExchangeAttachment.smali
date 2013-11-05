.class public Lcom/android/mail/providers/protos/exchange/ExchangeAttachment;
.super Lcom/android/mail/providers/Attachment;
.source "ExchangeAttachment.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/mail/providers/protos/exchange/ExchangeAttachment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public accountKey:J

.field public content:Ljava/lang/String;

.field public contentId:Ljava/lang/String;

.field public encoding:Ljava/lang/String;

.field public flags:I

.field public location:Ljava/lang/String;

.field public messageKey:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/android/mail/providers/protos/exchange/ExchangeAttachment$1;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/providers/protos/exchange/ExchangeAttachment$1;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/providers/protos/exchange/ExchangeAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/mail/providers/Attachment;-><init>(Landroid/os/Parcel;)V

    .line 33
    #p0=(Reference);
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/providers/protos/exchange/ExchangeAttachment;->contentId:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/android/mail/providers/protos/exchange/ExchangeAttachment;->messageKey:J

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/providers/protos/exchange/ExchangeAttachment;->location:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/protos/exchange/ExchangeAttachment;->encoding:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/protos/exchange/ExchangeAttachment;->content:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/protos/exchange/ExchangeAttachment;->flags:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    #v0=(LongLo);
    iput-wide v0, p0, Lcom/android/mail/providers/protos/exchange/ExchangeAttachment;->accountKey:J

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/android/mail/providers/Attachment;->writeToParcel(Landroid/os/Parcel;I)V

    .line 50
    iget-object v0, p0, Lcom/android/mail/providers/protos/exchange/ExchangeAttachment;->contentId:Ljava/lang/String;

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-wide v0, p0, Lcom/android/mail/providers/protos/exchange/ExchangeAttachment;->messageKey:J

    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 52
    iget-object v0, p0, Lcom/android/mail/providers/protos/exchange/ExchangeAttachment;->location:Ljava/lang/String;

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/android/mail/providers/protos/exchange/ExchangeAttachment;->encoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/android/mail/providers/protos/exchange/ExchangeAttachment;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-wide v0, p0, Lcom/android/mail/providers/protos/exchange/ExchangeAttachment;->accountKey:J

    #v0=(LongLo);
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 57
    return-void
.end method
