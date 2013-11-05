.class final Lcom/android/mail/ui/ConversationViewState$MessageViewState$1;
.super Ljava/lang/Object;
.source "ConversationViewState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/ConversationViewState$MessageViewState;
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
        "Lcom/android/mail/ui/ConversationViewState$MessageViewState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 235
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/mail/ui/ConversationViewState$MessageViewState;
    .locals 2
    .parameter "source"

    .prologue
    .line 239
    new-instance v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p1, v1}, Lcom/android/mail/ui/ConversationViewState$MessageViewState;-><init>(Landroid/os/Parcel;Lcom/android/mail/ui/ConversationViewState$1;)V

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/ConversationViewState$MessageViewState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/mail/ui/ConversationViewState$MessageViewState;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public newArray(I)[Lcom/android/mail/ui/ConversationViewState$MessageViewState;
    .locals 1
    .parameter "size"

    .prologue
    .line 244
    new-array v0, p1, [Lcom/android/mail/ui/ConversationViewState$MessageViewState;

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/ConversationViewState$MessageViewState$1;->newArray(I)[Lcom/android/mail/ui/ConversationViewState$MessageViewState;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method
