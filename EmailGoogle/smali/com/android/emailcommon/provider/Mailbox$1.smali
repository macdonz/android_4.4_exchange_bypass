.class final Lcom/android/emailcommon/provider/Mailbox$1;
.super Ljava/lang/Object;
.source "Mailbox.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/Mailbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/emailcommon/provider/Mailbox;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 870
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/emailcommon/provider/Mailbox;
    .locals 1
    .parameter "source"

    .prologue
    .line 873
    new-instance v0, Lcom/android/emailcommon/provider/Mailbox;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Lcom/android/emailcommon/provider/Mailbox;-><init>(Landroid/os/Parcel;)V

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 870
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/Mailbox$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public newArray(I)[Lcom/android/emailcommon/provider/Mailbox;
    .locals 1
    .parameter "size"

    .prologue
    .line 878
    new-array v0, p1, [Lcom/android/emailcommon/provider/Mailbox;

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 870
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/Mailbox$1;->newArray(I)[Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method
