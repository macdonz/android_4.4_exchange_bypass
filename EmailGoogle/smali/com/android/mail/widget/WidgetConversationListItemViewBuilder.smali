.class public Lcom/android/mail/widget/WidgetConversationListItemViewBuilder;
.super Ljava/lang/Object;
.source "WidgetConversationListItemViewBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/widget/WidgetConversationListItemViewBuilder$WidgetFolderDisplayer;
    }
.end annotation


# static fields
.field private static ATTACHMENT:Landroid/graphics/Bitmap;

.field private static DATE_FONT_SIZE:I

.field private static DATE_TEXT_COLOR:I

.field private static SUBJECT_FONT_SIZE:I

.field private static SUBJECT_TEXT_COLOR_READ:I

.field private static SUBJECT_TEXT_COLOR_UNREAD:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFolderDisplayer:Lcom/android/mail/widget/WidgetConversationListItemViewBuilder$WidgetFolderDisplayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 115
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 116
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/mail/widget/WidgetConversationListItemViewBuilder;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 120
    .local v0, res:Landroid/content/res/Resources;
    #v0=(Reference);
    const v1, 0x7f09004e

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/mail/widget/WidgetConversationListItemViewBuilder;->DATE_FONT_SIZE:I

    .line 121
    const v1, 0x7f09004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/mail/widget/WidgetConversationListItemViewBuilder;->SUBJECT_FONT_SIZE:I

    .line 124
    const v1, 0x7f0c000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mail/widget/WidgetConversationListItemViewBuilder;->SUBJECT_TEXT_COLOR_READ:I

    .line 125
    const v1, 0x7f0c0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mail/widget/WidgetConversationListItemViewBuilder;->SUBJECT_TEXT_COLOR_UNREAD:I

    .line 126
    const v1, 0x7f0c000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mail/widget/WidgetConversationListItemViewBuilder;->DATE_TEXT_COLOR:I

    .line 129
    const v1, 0x7f020028

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    #v1=(Reference);
    sput-object v1, Lcom/android/mail/widget/WidgetConversationListItemViewBuilder;->ATTACHMENT:Landroid/graphics/Bitmap;

    .line 130
    return-void
.end method

.method private static addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "text"
    .parameter "size"
    .parameter "color"

    .prologue
    const/16 v4, 0x21

    #v4=(PosByte);
    const/4 v3, 0x0

    .line 136
    #v3=(Null);
    new-instance v0, Landroid/text/SpannableStringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 137
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    #v0=(Reference);
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    #v1=(UninitRef);
    invoke-direct {v1, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    #v1=(Reference);
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    #v2=(Integer);
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 139
    if-eqz p2, :cond_0

    .line 140
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    #v1=(UninitRef);
    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    #v1=(Reference);
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 143
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getStyledView(Ljava/lang/CharSequence;Lcom/android/mail/providers/Conversation;Lcom/android/mail/utils/FolderUri;ILandroid/text/SpannableStringBuilder;Ljava/lang/String;)Landroid/widget/RemoteViews;
    .locals 16
    .parameter "date"
    .parameter "conversation"
    .parameter "folderUri"
    .parameter "ignoreFolderType"
    .parameter "senders"
    .parameter "filteredSubject"

    .prologue
    .line 153
    move-object/from16 v0, p2

    #v0=(Reference);
    iget-boolean v12, v0, Lcom/android/mail/providers/Conversation;->read:Z

    #v12=(Boolean);
    if-nez v12, :cond_3

    const/4 v4, 0x1

    .line 154
    .local v4, isUnread:Z
    :goto_0
    #v4=(Boolean);
    invoke-virtual/range {p2 .. p2}, Lcom/android/mail/providers/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v7

    .line 155
    .local v7, snippet:Ljava/lang/String;
    #v7=(Reference);
    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/android/mail/providers/Conversation;->hasAttachments:Z

    .line 158
    .local v3, hasAttachments:Z
    #v3=(Boolean);
    sget v12, Lcom/android/mail/widget/WidgetConversationListItemViewBuilder;->DATE_FONT_SIZE:I

    #v12=(Integer);
    sget v13, Lcom/android/mail/widget/WidgetConversationListItemViewBuilder;->DATE_TEXT_COLOR:I

    #v13=(Integer);
    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Lcom/android/mail/widget/WidgetConversationListItemViewBuilder;->addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 161
    .local v8, styledDate:Ljava/lang/CharSequence;
    #v8=(Reference);
    if-eqz v4, :cond_4

    sget v11, Lcom/android/mail/widget/WidgetConversationListItemViewBuilder;->SUBJECT_TEXT_COLOR_UNREAD:I

    .line 162
    .local v11, subjectColor:I
    :goto_1
    #v11=(Integer);
    new-instance v10, Landroid/text/SpannableStringBuilder;

    #v10=(UninitRef);
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mail/widget/WidgetConversationListItemViewBuilder;->mContext:Landroid/content/Context;

    #v12=(Reference);
    move-object/from16 v0, p6

    invoke-static {v12, v0, v7}, Lcom/android/mail/providers/Conversation;->getSubjectAndSnippetForDisplay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 164
    .local v10, subjectAndSnippet:Landroid/text/SpannableStringBuilder;
    #v10=(Reference);
    if-eqz v4, :cond_0

    .line 165
    new-instance v12, Landroid/text/style/StyleSpan;

    #v12=(UninitRef);
    const/4 v13, 0x1

    #v13=(One);
    invoke-direct {v12, v13}, Landroid/text/style/StyleSpan;-><init>(I)V

    #v12=(Reference);
    const/4 v13, 0x0

    #v13=(Null);
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v14

    #v14=(Integer);
    const/16 v15, 0x21

    #v15=(PosByte);
    invoke-virtual {v10, v12, v13, v14, v15}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 168
    :cond_0
    #v13=(Integer);v14=(Conflicted);v15=(Conflicted);
    new-instance v12, Landroid/text/style/ForegroundColorSpan;

    #v12=(UninitRef);
    invoke-direct {v12, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    #v12=(Reference);
    const/4 v13, 0x0

    #v13=(Null);
    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    #v14=(Integer);
    const/16 v15, 0x21

    #v15=(PosByte);
    invoke-virtual {v10, v12, v13, v14, v15}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 170
    sget v12, Lcom/android/mail/widget/WidgetConversationListItemViewBuilder;->SUBJECT_FONT_SIZE:I

    #v12=(Integer);
    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Lcom/android/mail/widget/WidgetConversationListItemViewBuilder;->addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 173
    .local v9, styledSubject:Ljava/lang/CharSequence;
    #v9=(Reference);
    const/4 v5, 0x0

    .line 174
    .local v5, paperclipBitmap:Landroid/graphics/Bitmap;
    #v5=(Null);
    if-eqz v3, :cond_1

    .line 175
    sget-object v5, Lcom/android/mail/widget/WidgetConversationListItemViewBuilder;->ATTACHMENT:Landroid/graphics/Bitmap;

    .line 179
    :cond_1
    #v5=(Reference);
    new-instance v6, Landroid/widget/RemoteViews;

    #v6=(UninitRef);
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mail/widget/WidgetConversationListItemViewBuilder;->mContext:Landroid/content/Context;

    #v12=(Reference);
    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f040074

    #v13=(Integer);
    invoke-direct {v6, v12, v13}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 181
    .local v6, remoteViews:Landroid/widget/RemoteViews;
    #v6=(Reference);
    const v12, 0x7f08015f

    #v12=(Integer);
    move-object/from16 v0, p5

    invoke-virtual {v6, v12, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 182
    const v12, 0x7f08015e

    invoke-virtual {v6, v12, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 183
    const v12, 0x7f080160

    invoke-virtual {v6, v12, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 184
    if-eqz v5, :cond_5

    .line 185
    const v12, 0x7f08015d

    const/4 v13, 0x0

    #v13=(Null);
    invoke-virtual {v6, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 186
    const v12, 0x7f08015d

    invoke-virtual {v6, v12, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 190
    :goto_2
    #v13=(PosByte);
    if-eqz v4, :cond_6

    .line 191
    const v12, 0x7f080156

    const/4 v13, 0x0

    #v13=(Null);
    invoke-virtual {v6, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 192
    const v12, 0x7f080157

    const/16 v13, 0x8

    #v13=(PosByte);
    invoke-virtual {v6, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 197
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mail/widget/WidgetConversationListItemViewBuilder;->mContext:Landroid/content/Context;

    #v12=(Reference);
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d0004

    #v13=(Integer);
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    #v12=(Boolean);
    if-eqz v12, :cond_2

    .line 198
    new-instance v12, Lcom/android/mail/widget/WidgetConversationListItemViewBuilder$WidgetFolderDisplayer;

    #v12=(UninitRef);
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mail/widget/WidgetConversationListItemViewBuilder;->mContext:Landroid/content/Context;

    #v13=(Reference);
    invoke-direct {v12, v13}, Lcom/android/mail/widget/WidgetConversationListItemViewBuilder$WidgetFolderDisplayer;-><init>(Landroid/content/Context;)V

    #v12=(Reference);
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mail/widget/WidgetConversationListItemViewBuilder;->mFolderDisplayer:Lcom/android/mail/widget/WidgetConversationListItemViewBuilder$WidgetFolderDisplayer;

    .line 199
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mail/widget/WidgetConversationListItemViewBuilder;->mFolderDisplayer:Lcom/android/mail/widget/WidgetConversationListItemViewBuilder$WidgetFolderDisplayer;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    #v1=(Reference);
    move/from16 v2, p4

    #v2=(Integer);
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/mail/widget/WidgetConversationListItemViewBuilder$WidgetFolderDisplayer;->loadConversationFolders(Lcom/android/mail/providers/Conversation;Lcom/android/mail/utils/FolderUri;I)V

    .line 200
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mail/widget/WidgetConversationListItemViewBuilder;->mFolderDisplayer:Lcom/android/mail/widget/WidgetConversationListItemViewBuilder$WidgetFolderDisplayer;

    invoke-virtual {v12, v6}, Lcom/android/mail/widget/WidgetConversationListItemViewBuilder$WidgetFolderDisplayer;->displayFolders(Landroid/widget/RemoteViews;)V

    .line 203
    :cond_2
    #v1=(Conflicted);v2=(Conflicted);v12=(Conflicted);v13=(Conflicted);
    return-object v6

    .line 153
    .end local v3           #hasAttachments:Z
    .end local v4           #isUnread:Z
    .end local v5           #paperclipBitmap:Landroid/graphics/Bitmap;
    .end local v6           #remoteViews:Landroid/widget/RemoteViews;
    .end local v7           #snippet:Ljava/lang/String;
    .end local v8           #styledDate:Ljava/lang/CharSequence;
    .end local v9           #styledSubject:Ljava/lang/CharSequence;
    .end local v10           #subjectAndSnippet:Landroid/text/SpannableStringBuilder;
    .end local v11           #subjectColor:I
    :cond_3
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Boolean);v13=(Uninit);v14=(Uninit);v15=(Uninit);
    const/4 v4, 0x0

    #v4=(Null);
    goto/16 :goto_0

    .line 161
    .restart local v3       #hasAttachments:Z
    .restart local v4       #isUnread:Z
    .restart local v7       #snippet:Ljava/lang/String;
    .restart local v8       #styledDate:Ljava/lang/CharSequence;
    :cond_4
    #v3=(Boolean);v4=(Boolean);v7=(Reference);v8=(Reference);v12=(Integer);v13=(Integer);
    sget v11, Lcom/android/mail/widget/WidgetConversationListItemViewBuilder;->SUBJECT_TEXT_COLOR_READ:I

    #v11=(Integer);
    goto/16 :goto_1

    .line 188
    .restart local v5       #paperclipBitmap:Landroid/graphics/Bitmap;
    .restart local v6       #remoteViews:Landroid/widget/RemoteViews;
    .restart local v9       #styledSubject:Ljava/lang/CharSequence;
    .restart local v10       #subjectAndSnippet:Landroid/text/SpannableStringBuilder;
    .restart local v11       #subjectColor:I
    :cond_5
    #v5=(Reference);v6=(Reference);v9=(Reference);v10=(Reference);v14=(Integer);v15=(PosByte);
    const v12, 0x7f08015d

    const/16 v13, 0x8

    #v13=(PosByte);
    invoke-virtual {v6, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2

    .line 194
    :cond_6
    const v12, 0x7f080156

    const/16 v13, 0x8

    invoke-virtual {v6, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 195
    const v12, 0x7f080157

    const/4 v13, 0x0

    #v13=(Null);
    invoke-virtual {v6, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_3
.end method
