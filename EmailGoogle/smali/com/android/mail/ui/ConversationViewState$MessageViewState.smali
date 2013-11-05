.class Lcom/android/mail/ui/ConversationViewState$MessageViewState;
.super Ljava/lang/Object;
.source "ConversationViewState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/ConversationViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageViewState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/mail/ui/ConversationViewState$MessageViewState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public expansionState:Ljava/lang/Integer;

.field public read:Z

.field public showImages:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState$1;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/ui/ConversationViewState$MessageViewState$1;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "source"

    .prologue
    const/4 v2, 0x1

    #v2=(One);
    const/4 v3, 0x0

    .line 226
    #v3=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 227
    #p0=(Reference);
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #v1=(Integer);
    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    #v1=(Boolean);
    iput-boolean v1, p0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;->read:Z

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 229
    .local v0, expandedVal:I
    #v0=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;->expansionState:Ljava/lang/Integer;

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #v1=(Integer);
    if-eqz v1, :cond_2

    :goto_2
    #v2=(Boolean);
    iput-boolean v2, p0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;->showImages:Z

    .line 231
    return-void

    .end local v0           #expandedVal:I
    :cond_0
    #v0=(Uninit);v2=(One);
    move v1, v3

    .line 227
    #v1=(Null);
    goto :goto_0

    .line 229
    .restart local v0       #expandedVal:I
    :cond_1
    #v0=(Integer);v1=(Byte);
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    goto :goto_1

    :cond_2
    #v1=(Integer);
    move v2, v3

    .line 230
    #v2=(Null);
    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/mail/ui/ConversationViewState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/android/mail/ui/ConversationViewState$MessageViewState;-><init>(Landroid/os/Parcel;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 221
    #v2=(Null);
    iget-boolean v0, p0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;->read:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;->expansionState:Ljava/lang/Integer;

    #v0=(Reference);
    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    #v0=(Integer);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget-boolean v0, p0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;->showImages:Z

    #v0=(Boolean);
    if-eqz v0, :cond_2

    :goto_2
    #v1=(Boolean);
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    return-void

    :cond_0
    #v1=(One);
    move v0, v2

    .line 221
    #v0=(Null);
    goto :goto_0

    .line 222
    :cond_1
    #v0=(Reference);
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;->expansionState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #v0=(Integer);
    goto :goto_1

    :cond_2
    #v0=(Boolean);
    move v1, v2

    .line 223
    #v1=(Null);
    goto :goto_2
.end method
