.class public Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;
.super Lcom/android/mail/browse/ConversationOverlayItem;
.source "ConversationViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/ConversationViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageHeaderItem"
.end annotation


# instance fields
.field public detailsExpanded:Z

.field private final mAdapter:Lcom/android/mail/browse/ConversationViewAdapter;

.field private mDateBuilder:Lcom/android/mail/FormattedDateBuilder;

.field private mExpanded:Z

.field private mMessage:Lcom/android/mail/browse/ConversationMessage;

.field private mShowImages:Z

.field private mTimestampLong:Ljava/lang/CharSequence;

.field private mTimestampMs:J

.field private mTimestampShort:Ljava/lang/CharSequence;

.field public recipientSummaryText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/ConversationViewAdapter;Lcom/android/mail/FormattedDateBuilder;Lcom/android/mail/browse/ConversationMessage;ZZ)V
    .locals 1
    .parameter "adapter"
    .parameter "dateBuilder"
    .parameter "message"
    .parameter "expanded"
    .parameter "showImages"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationOverlayItem;-><init>()V

    .line 145
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mAdapter:Lcom/android/mail/browse/ConversationViewAdapter;

    .line 146
    iput-object p2, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mDateBuilder:Lcom/android/mail/FormattedDateBuilder;

    .line 147
    iput-object p3, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mMessage:Lcom/android/mail/browse/ConversationMessage;

    .line 148
    iput-boolean p4, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mExpanded:Z

    .line 149
    iput-boolean p5, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mShowImages:Z

    .line 151
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->detailsExpanded:Z

    .line 152
    return-void
.end method

.method private ensureTimestamps()V
    .locals 4

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mMessage:Lcom/android/mail/browse/ConversationMessage;

    #v0=(Reference);
    iget-wide v0, v0, Lcom/android/mail/providers/Message;->dateReceivedMs:J

    #v0=(LongLo);v1=(LongHi);
    iget-wide v2, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mTimestampMs:J

    #v2=(LongLo);v3=(LongHi);
    cmp-long v0, v0, v2

    #v0=(Byte);
    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mMessage:Lcom/android/mail/browse/ConversationMessage;

    #v0=(Reference);
    iget-wide v0, v0, Lcom/android/mail/providers/Message;->dateReceivedMs:J

    #v0=(LongLo);
    iput-wide v0, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mTimestampMs:J

    .line 244
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mDateBuilder:Lcom/android/mail/FormattedDateBuilder;

    #v0=(Reference);
    iget-wide v1, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mTimestampMs:J

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Lcom/android/mail/FormattedDateBuilder;->formatShortDate(J)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mTimestampShort:Ljava/lang/CharSequence;

    .line 245
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mDateBuilder:Lcom/android/mail/FormattedDateBuilder;

    iget-wide v1, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mTimestampMs:J

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/FormattedDateBuilder;->formatLongDateTime(J)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mTimestampLong:Ljava/lang/CharSequence;

    .line 247
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void
.end method


# virtual methods
.method public belongsToMessage(Lcom/android/mail/browse/ConversationMessage;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mMessage:Lcom/android/mail/browse/ConversationMessage;

    #v0=(Reference);
    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public bindView(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "measureOnly"

    .prologue
    .line 177
    move-object v0, p1

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/browse/MessageHeaderView;

    .line 178
    .local v0, header:Lcom/android/mail/browse/MessageHeaderView;
    invoke-virtual {v0, p0, p2}, Lcom/android/mail/browse/MessageHeaderView;->bind(Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;Z)V

    .line 179
    return-void
.end method

.method public canBecomeSnapHeader()Z
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->isExpanded()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public canPushSnapHeader()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public createView(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "inflater"
    .parameter "parent"

    .prologue
    .line 165
    const v1, 0x7f040034

    #v1=(Integer);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p2, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/browse/MessageHeaderView;

    .line 167
    .local v0, v:Lcom/android/mail/browse/MessageHeaderView;
    iget-object v1, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mAdapter:Lcom/android/mail/browse/ConversationViewAdapter;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/browse/ConversationViewAdapter;->access$100(Lcom/android/mail/browse/ConversationViewAdapter;)Lcom/android/mail/browse/ConversationAccountController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mAdapter:Lcom/android/mail/browse/ConversationViewAdapter;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/mail/browse/ConversationViewAdapter;->access$200(Lcom/android/mail/browse/ConversationViewAdapter;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/browse/MessageHeaderView;->initialize(Lcom/android/mail/browse/ConversationAccountController;Ljava/util/Map;)V

    .line 169
    iget-object v1, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mAdapter:Lcom/android/mail/browse/ConversationViewAdapter;

    invoke-static {v1}, Lcom/android/mail/browse/ConversationViewAdapter;->access$300(Lcom/android/mail/browse/ConversationViewAdapter;)Lcom/android/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/MessageHeaderView;->setCallbacks(Lcom/android/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;)V

    .line 170
    iget-object v1, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mAdapter:Lcom/android/mail/browse/ConversationViewAdapter;

    invoke-static {v1}, Lcom/android/mail/browse/ConversationViewAdapter;->access$400(Lcom/android/mail/browse/ConversationViewAdapter;)Lcom/android/mail/ContactInfoSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/MessageHeaderView;->setContactInfoSource(Lcom/android/mail/ContactInfoSource;)V

    .line 171
    iget-object v1, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mAdapter:Lcom/android/mail/browse/ConversationViewAdapter;

    invoke-static {v1}, Lcom/android/mail/browse/ConversationViewAdapter;->access$500(Lcom/android/mail/browse/ConversationViewAdapter;)Lcom/android/mail/utils/VeiledAddressMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/MessageHeaderView;->setVeiledMatcher(Lcom/android/mail/utils/VeiledAddressMatcher;)V

    .line 172
    return-object v0
.end method

.method public getAdapter()Lcom/android/mail/browse/ConversationViewAdapter;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mAdapter:Lcom/android/mail/browse/ConversationViewAdapter;

    #v0=(Reference);
    return-object v0
.end method

.method public getMessage()Lcom/android/mail/browse/ConversationMessage;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mMessage:Lcom/android/mail/browse/ConversationMessage;

    #v0=(Reference);
    return-object v0
.end method

.method public getShowImages()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mShowImages:Z

    #v0=(Boolean);
    return v0
.end method

.method public getTimestampLong()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->ensureTimestamps()V

    .line 238
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mTimestampLong:Ljava/lang/CharSequence;

    #v0=(Reference);
    return-object v0
.end method

.method public getTimestampShort()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->ensureTimestamps()V

    .line 233
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mTimestampShort:Ljava/lang/CharSequence;

    #v0=(Reference);
    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public isContiguous()Z
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->isExpanded()Z

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

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mExpanded:Z

    #v0=(Boolean);
    return v0
.end method

.method public onModelUpdated(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 183
    move-object v0, p1

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/browse/MessageHeaderView;

    .line 184
    .local v0, header:Lcom/android/mail/browse/MessageHeaderView;
    invoke-virtual {v0}, Lcom/android/mail/browse/MessageHeaderView;->refresh()V

    .line 185
    return-void
.end method

.method public rebindView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 255
    move-object v0, p1

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/browse/MessageHeaderView;

    .line 256
    .local v0, header:Lcom/android/mail/browse/MessageHeaderView;
    invoke-virtual {v0, p0}, Lcom/android/mail/browse/MessageHeaderView;->rebind(Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;)V

    .line 257
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1
    .parameter "expanded"

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mExpanded:Z

    #v0=(Boolean);
    if-eq v0, p1, :cond_0

    .line 199
    iput-boolean p1, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mExpanded:Z

    .line 201
    :cond_0
    return-void
.end method

.method public setMessage(Lcom/android/mail/browse/ConversationMessage;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mMessage:Lcom/android/mail/browse/ConversationMessage;

    .line 229
    return-void
.end method

.method public setShowImages(Z)V
    .locals 0
    .parameter "showImages"

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->mShowImages:Z

    .line 209
    return-void
.end method
