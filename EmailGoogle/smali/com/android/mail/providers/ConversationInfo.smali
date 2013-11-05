.class public Lcom/android/mail/providers/ConversationInfo;
.super Ljava/lang/Object;
.source "ConversationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/mail/providers/ConversationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public draftCount:I

.field public firstSnippet:Ljava/lang/String;

.field public firstUnreadSnippet:Ljava/lang/String;

.field public lastSnippet:Ljava/lang/String;

.field public messageCount:I

.field public final messageInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mail/providers/MessageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/android/mail/providers/ConversationInfo$1;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/providers/ConversationInfo$1;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/providers/ConversationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    #p0=(Reference);
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    #p0=(Reference);
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    .line 45
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "count"
    .parameter "draft"
    .parameter "first"
    .parameter "firstUnread"
    .parameter "last"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    #p0=(Reference);
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    .line 49
    invoke-virtual/range {p0 .. p5}, Lcom/android/mail/providers/ConversationInfo;->set(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    #p0=(Reference);
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/providers/ConversationInfo;->messageCount:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/ConversationInfo;->draftCount:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->firstSnippet:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->firstUnreadSnippet:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->lastSnippet:Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/android/mail/providers/MessageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/mail/providers/ConversationInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/mail/providers/ConversationInfo;-><init>(Landroid/os/Parcel;)V

    #p0=(Reference);
    return-void
.end method

.method public static fromBlob([B)Lcom/android/mail/providers/ConversationInfo;
    .locals 4
    .parameter "blob"

    .prologue
    const/4 v3, 0x0

    .line 77
    #v3=(Null);
    if-nez p0, :cond_0

    .line 78
    const/4 v1, 0x0

    .line 85
    :goto_0
    #v0=(Conflicted);v1=(Reference);v2=(Conflicted);
    return-object v1

    .line 80
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 81
    .local v0, p:Landroid/os/Parcel;
    #v0=(Reference);
    array-length v2, p0

    #v2=(Integer);
    invoke-virtual {v0, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 82
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    sget-object v2, Lcom/android/mail/providers/ConversationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #v2=(Reference);
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/providers/ConversationInfo;

    .line 84
    .local v1, result:Lcom/android/mail/providers/ConversationInfo;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public addMessage(Lcom/android/mail/providers/MessageInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 133
    const/4 v0, 0x6

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    iget v2, p0, Lcom/android/mail/providers/ConversationInfo;->messageCount:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x1

    #v1=(One);
    iget v2, p0, Lcom/android/mail/providers/ConversationInfo;->draftCount:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x2

    #v1=(PosByte);
    iget-object v2, p0, Lcom/android/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/mail/providers/ConversationInfo;->firstSnippet:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/mail/providers/ConversationInfo;->lastSnippet:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/mail/providers/ConversationInfo;->firstUnreadSnippet:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public markRead(Z)Z
    .locals 4
    .parameter "read"

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, changed:Z
    #v0=(Null);
    iget-object v3, p0, Lcom/android/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Boolean);v1=(Reference);v2=(Conflicted);v3=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/mail/providers/MessageInfo;

    .line 121
    .local v2, msg:Lcom/android/mail/providers/MessageInfo;
    invoke-virtual {v2, p1}, Lcom/android/mail/providers/MessageInfo;->markRead(Z)Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_0

    .line 123
    .end local v2           #msg:Lcom/android/mail/providers/MessageInfo;
    :cond_0
    #v2=(Conflicted);
    if-eqz p1, :cond_1

    .line 124
    iget-object v3, p0, Lcom/android/mail/providers/ConversationInfo;->lastSnippet:Ljava/lang/String;

    #v3=(Reference);
    iput-object v3, p0, Lcom/android/mail/providers/ConversationInfo;->firstSnippet:Ljava/lang/String;

    .line 128
    :goto_1
    return v0

    .line 126
    :cond_1
    #v3=(Boolean);
    iget-object v3, p0, Lcom/android/mail/providers/ConversationInfo;->firstUnreadSnippet:Ljava/lang/String;

    #v3=(Reference);
    iput-object v3, p0, Lcom/android/mail/providers/ConversationInfo;->firstSnippet:Ljava/lang/String;

    goto :goto_1
.end method

.method public set(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "count"
    .parameter "draft"
    .parameter "first"
    .parameter "firstUnread"
    .parameter "last"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 98
    iput p1, p0, Lcom/android/mail/providers/ConversationInfo;->messageCount:I

    .line 99
    iput p2, p0, Lcom/android/mail/providers/ConversationInfo;->draftCount:I

    .line 100
    iput-object p3, p0, Lcom/android/mail/providers/ConversationInfo;->firstSnippet:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Lcom/android/mail/providers/ConversationInfo;->firstUnreadSnippet:Ljava/lang/String;

    .line 102
    iput-object p5, p0, Lcom/android/mail/providers/ConversationInfo;->lastSnippet:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public toBlob()[B
    .locals 3

    .prologue
    .line 89
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 90
    .local v0, p:Landroid/os/Parcel;
    #v0=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, v0, v2}, Lcom/android/mail/providers/ConversationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 91
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 92
    .local v1, result:[B
    #v1=(Reference);
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 93
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .local v0, builder:Ljava/lang/StringBuilder;
    #v0=(Reference);
    const-string v1, "[ConversationInfo object: messageCount = "

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget v1, p0, Lcom/android/mail/providers/ConversationInfo;->messageCount:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, ", draftCount = "

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget v1, p0, Lcom/android/mail/providers/ConversationInfo;->draftCount:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, ", firstSnippet= "

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v1, p0, Lcom/android/mail/providers/ConversationInfo;->firstSnippet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v1, ", firstUnreadSnippet = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-object v1, p0, Lcom/android/mail/providers/ConversationInfo;->firstUnreadSnippet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v1, ", messageInfos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-object v1, p0, Lcom/android/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/mail/providers/ConversationInfo;->messageCount:I

    #v0=(Integer);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v0, p0, Lcom/android/mail/providers/ConversationInfo;->draftCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->firstSnippet:Ljava/lang/String;

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->firstUnreadSnippet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->lastSnippet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 74
    return-void
.end method
