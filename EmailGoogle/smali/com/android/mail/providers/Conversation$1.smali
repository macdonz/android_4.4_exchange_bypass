.class final Lcom/android/mail/providers/Conversation$1;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator",
        "<",
        "Lcom/android/mail/providers/Conversation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 295
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/mail/providers/Conversation;
    .locals 2
    .parameter "source"

    .prologue
    const/4 v1, 0x0

    .line 299
    #v1=(Null);
    new-instance v0, Lcom/android/mail/providers/Conversation;

    #v0=(UninitRef);
    invoke-direct {v0, p1, v1, v1}, Lcom/android/mail/providers/Conversation;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/android/mail/providers/Conversation$1;)V

    #v0=(Reference);
    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/android/mail/providers/Conversation;
    .locals 2
    .parameter "source"
    .parameter "loader"

    .prologue
    .line 304
    new-instance v0, Lcom/android/mail/providers/Conversation;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p1, p2, v1}, Lcom/android/mail/providers/Conversation;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/android/mail/providers/Conversation$1;)V

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lcom/android/mail/providers/Conversation$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/mail/providers/Conversation;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 295
    invoke-virtual {p0, p1, p2}, Lcom/android/mail/providers/Conversation$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/android/mail/providers/Conversation;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public newArray(I)[Lcom/android/mail/providers/Conversation;
    .locals 1
    .parameter "size"

    .prologue
    .line 309
    new-array v0, p1, [Lcom/android/mail/providers/Conversation;

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lcom/android/mail/providers/Conversation$1;->newArray(I)[Lcom/android/mail/providers/Conversation;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method
