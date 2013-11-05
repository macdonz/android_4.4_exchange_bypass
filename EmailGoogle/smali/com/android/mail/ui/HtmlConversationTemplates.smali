.class public Lcom/android/mail/ui/HtmlConversationTemplates;
.super Ljava/lang/Object;
.source "HtmlConversationTemplates.java"


# static fields
.field public static final MESSAGE_PREFIX_LENGTH:I

.field private static final TAG:Ljava/lang/String;

.field private static final sAbsoluteImgUrlPattern:Ljava/util/regex/Pattern;

.field private static sBorder:Ljava/lang/String;

.field private static sConversationLower:Ljava/lang/String;

.field private static sConversationUpper:Ljava/lang/String;

.field private static sLoadedTemplates:Z

.field private static sMessage:Ljava/lang/String;

.field private static sSuperCollapsed:Ljava/lang/String;


# instance fields
.field private mBuilder:Ljava/lang/StringBuilder;

.field private mContext:Landroid/content/Context;

.field private mFormatter:Ljava/util/Formatter;

.field private mInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-string v0, "m"

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    #v0=(Integer);
    sput v0, Lcom/android/mail/ui/HtmlConversationTemplates;->MESSAGE_PREFIX_LENGTH:I

    .line 54
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/HtmlConversationTemplates;->TAG:Ljava/lang/String;

    .line 79
    const-string v0, "(<\\s*img\\s+(?:[^>]*\\s+)?)src(\\s*=[\\s\'\"]*http)"

    const/16 v1, 0xa

    #v1=(PosByte);
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/HtmlConversationTemplates;->sAbsoluteImgUrlPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/ui/HtmlConversationTemplates;->mInProgress:Z

    .line 101
    iput-object p1, p0, Lcom/android/mail/ui/HtmlConversationTemplates;->mContext:Landroid/content/Context;

    .line 105
    sget-boolean v0, Lcom/android/mail/ui/HtmlConversationTemplates;->sLoadedTemplates:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x1

    #v0=(One);
    sput-boolean v0, Lcom/android/mail/ui/HtmlConversationTemplates;->sLoadedTemplates:Z

    .line 107
    const v0, 0x7f070004

    #v0=(Integer);
    invoke-direct {p0, v0}, Lcom/android/mail/ui/HtmlConversationTemplates;->readTemplate(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/HtmlConversationTemplates;->sSuperCollapsed:Ljava/lang/String;

    .line 108
    const/high16 v0, 0x7f07

    #v0=(Integer);
    invoke-direct {p0, v0}, Lcom/android/mail/ui/HtmlConversationTemplates;->readTemplate(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/HtmlConversationTemplates;->sBorder:Ljava/lang/String;

    .line 109
    const v0, 0x7f070003

    #v0=(Integer);
    invoke-direct {p0, v0}, Lcom/android/mail/ui/HtmlConversationTemplates;->readTemplate(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/HtmlConversationTemplates;->sMessage:Ljava/lang/String;

    .line 110
    const v0, 0x7f070002

    #v0=(Integer);
    invoke-direct {p0, v0}, Lcom/android/mail/ui/HtmlConversationTemplates;->readTemplate(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/HtmlConversationTemplates;->sConversationUpper:Ljava/lang/String;

    .line 111
    const v0, 0x7f070001

    #v0=(Integer);
    invoke-direct {p0, v0}, Lcom/android/mail/ui/HtmlConversationTemplates;->readTemplate(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/HtmlConversationTemplates;->sConversationLower:Ljava/lang/String;

    .line 113
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method private varargs append(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter "template"
    .parameter "args"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/mail/ui/HtmlConversationTemplates;->mFormatter:Ljava/util/Formatter;

    #v0=(Reference);
    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 255
    return-void
.end method

.method private readTemplate(I)Ljava/lang/String;
    .locals 9
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 227
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .local v5, out:Ljava/lang/StringBuilder;
    #v5=(Reference);
    const/4 v3, 0x0

    .line 231
    .local v3, in:Ljava/io/InputStreamReader;
    :try_start_0
    #v3=(Null);
    new-instance v4, Ljava/io/InputStreamReader;

    #v4=(UninitRef);
    iget-object v6, p0, Lcom/android/mail/ui/HtmlConversationTemplates;->mContext:Landroid/content/Context;

    #v6=(Reference);
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "UTF-8"

    #v7=(Reference);
    invoke-direct {v4, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 233
    .end local v3           #in:Ljava/io/InputStreamReader;
    .local v4, in:Ljava/io/InputStreamReader;
    #v4=(Reference);
    const/16 v6, 0x1000

    :try_start_1
    #v6=(PosShort);
    new-array v0, v6, [C

    .line 236
    .local v0, buf:[C
    :goto_0
    #v0=(Reference);v1=(Conflicted);
    invoke-virtual {v4, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v1

    .local v1, chars:I
    #v1=(Integer);
    if-lez v1, :cond_1

    .line 237
    const/4 v6, 0x0

    #v6=(Null);
    invoke-virtual {v5, v0, v6, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 243
    .end local v0           #buf:[C
    .end local v1           #chars:I
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v6=(PosShort);
    move-exception v6

    #v6=(Reference);
    move-object v3, v4

    .end local v4           #in:Ljava/io/InputStreamReader;
    .restart local v3       #in:Ljava/io/InputStreamReader;
    :goto_1
    #v3=(Reference);v4=(Conflicted);v7=(Conflicted);
    if-eqz v3, :cond_0

    .line 244
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    :cond_0
    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 247
    :catch_0
    move-exception v2

    .line 248
    .local v2, e:Ljava/io/IOException;
    :goto_2
    #v2=(Reference);
    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    #v6=(UninitRef);
    new-instance v7, Ljava/lang/StringBuilder;

    #v7=(UninitRef);
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #v7=(Reference);
    const-string v8, "Unable to open template id="

    #v8=(Reference);
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exception="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #v6=(Reference);
    throw v6

    .line 240
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #in:Ljava/io/InputStreamReader;
    .restart local v0       #buf:[C
    .restart local v1       #chars:I
    .restart local v4       #in:Ljava/io/InputStreamReader;
    :cond_1
    :try_start_3
    #v0=(Reference);v1=(Integer);v2=(Uninit);v3=(Null);v4=(Reference);v6=(PosShort);v8=(Uninit);
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 243
    #v6=(Reference);
    if-eqz v4, :cond_2

    .line 244
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    return-object v6

    .line 247
    :catch_1
    move-exception v2

    #v2=(Reference);
    move-object v3, v4

    .end local v4           #in:Ljava/io/InputStreamReader;
    .restart local v3       #in:Ljava/io/InputStreamReader;
    #v3=(Reference);
    goto :goto_2

    .line 243
    .end local v0           #buf:[C
    .end local v1           #chars:I
    :catchall_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Null);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    move-exception v6

    #v6=(Reference);
    goto :goto_1
.end method

.method static replaceAbsoluteImgUrls(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "html"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 133
    sget-object v0, Lcom/android/mail/ui/HtmlConversationTemplates;->sAbsoluteImgUrlPattern:Ljava/util/regex/Pattern;

    #v0=(Reference);
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1src=\'data:\' blocked-src$2"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public appendBorder(I)V
    .locals 4
    .parameter "blockHeight"

    .prologue
    .line 128
    sget-object v0, Lcom/android/mail/ui/HtmlConversationTemplates;->sBorder:Ljava/lang/String;

    #v0=(Reference);
    const/4 v1, 0x1

    #v1=(One);
    new-array v1, v1, [Ljava/lang/Object;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/mail/ui/HtmlConversationTemplates;->append(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method public appendMessageHtml(Lcom/android/mail/ui/HtmlMessage;ZZII)V
    .locals 8
    .parameter "message"
    .parameter "isExpanded"
    .parameter "safeForImages"
    .parameter "headerHeight"
    .parameter "footerHeight"

    .prologue
    .line 139
    if-eqz p2, :cond_1

    const-string v1, "block"

    .line 140
    .local v1, bodyDisplay:Ljava/lang/String;
    :goto_0
    #v1=(Reference);
    if-eqz p2, :cond_2

    const-string v2, "expanded"

    .line 141
    .local v2, expandedClass:Ljava/lang/String;
    :goto_1
    #v2=(Reference);
    if-eqz p3, :cond_3

    const-string v3, "mail-show-images"

    .line 143
    .local v3, showImagesClass:Ljava/lang/String;
    :goto_2
    #v3=(Reference);
    invoke-interface {p1}, Lcom/android/mail/ui/HtmlMessage;->getBodyAsHtml()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, body:Ljava/lang/String;
    #v0=(Reference);
    if-nez p3, :cond_0

    invoke-interface {p1}, Lcom/android/mail/ui/HtmlMessage;->embedsExternalResources()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 160
    invoke-static {v0}, Lcom/android/mail/ui/HtmlConversationTemplates;->replaceAbsoluteImgUrls(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    :cond_0
    #v4=(Conflicted);
    sget-object v4, Lcom/android/mail/ui/HtmlConversationTemplates;->sMessage:Ljava/lang/String;

    #v4=(Reference);
    const/16 v5, 0x8

    #v5=(PosByte);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/HtmlConversationTemplates;->getMessageDomId(Lcom/android/mail/ui/HtmlMessage;)Ljava/lang/String;

    move-result-object v7

    #v7=(Reference);
    aput-object v7, v5, v6

    const/4 v6, 0x1

    #v6=(One);
    aput-object v2, v5, v6

    const/4 v6, 0x2

    #v6=(PosByte);
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v3, v5, v6

    const/4 v6, 0x4

    aput-object v1, v5, v6

    const/4 v6, 0x5

    aput-object v0, v5, v6

    const/4 v6, 0x6

    aput-object v1, v5, v6

    const/4 v6, 0x7

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {p0, v4, v5}, Lcom/android/mail/ui/HtmlConversationTemplates;->append(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    return-void

    .line 139
    .end local v0           #body:Ljava/lang/String;
    .end local v1           #bodyDisplay:Ljava/lang/String;
    .end local v2           #expandedClass:Ljava/lang/String;
    .end local v3           #showImagesClass:Ljava/lang/String;
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);
    const-string v1, "none"

    #v1=(Reference);
    goto :goto_0

    .line 140
    .restart local v1       #bodyDisplay:Ljava/lang/String;
    :cond_2
    const-string v2, ""

    #v2=(Reference);
    goto :goto_1

    .line 141
    .restart local v2       #expandedClass:Ljava/lang/String;
    :cond_3
    const-string v3, ""

    #v3=(Reference);
    goto :goto_2
.end method

.method public appendSuperCollapsedHtml(II)V
    .locals 4
    .parameter "firstCollapsed"
    .parameter "blockHeight"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/mail/ui/HtmlConversationTemplates;->mInProgress:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    #v0=(UninitRef);
    const-string v1, "must call startConversation first"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 120
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    sget-object v0, Lcom/android/mail/ui/HtmlConversationTemplates;->sSuperCollapsed:Ljava/lang/String;

    #v0=(Reference);
    const/4 v1, 0x2

    #v1=(PosByte);
    new-array v1, v1, [Ljava/lang/Object;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    const/4 v2, 0x1

    #v2=(One);
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/mail/ui/HtmlConversationTemplates;->append(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public emit()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 214
    #v2=(Null);
    iget-object v1, p0, Lcom/android/mail/ui/HtmlConversationTemplates;->mFormatter:Ljava/util/Formatter;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, out:Ljava/lang/String;
    #v0=(Reference);
    iput-object v2, p0, Lcom/android/mail/ui/HtmlConversationTemplates;->mFormatter:Ljava/util/Formatter;

    .line 217
    iput-object v2, p0, Lcom/android/mail/ui/HtmlConversationTemplates;->mBuilder:Ljava/lang/StringBuilder;

    .line 218
    return-object v0
.end method

.method public endConversation(Ljava/lang/String;Ljava/lang/String;IZZZZ)Ljava/lang/String;
    .locals 8
    .parameter "docBaseUri"
    .parameter "conversationBaseUri"
    .parameter "viewportWidth"
    .parameter "enableContentReadySignal"
    .parameter "normalizeMessageWidths"
    .parameter "enableMungeTables"
    .parameter "enableMungeImages"

    .prologue
    const/4 v7, 0x2

    #v7=(PosByte);
    const/4 v6, 0x1

    #v6=(One);
    const/4 v5, 0x0

    .line 194
    #v5=(Null);
    iget-boolean v1, p0, Lcom/android/mail/ui/HtmlConversationTemplates;->mInProgress:Z

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 195
    new-instance v1, Ljava/lang/IllegalStateException;

    #v1=(UninitRef);
    const-string v2, "must call startConversation first"

    #v2=(Reference);
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 198
    :cond_0
    #v1=(Boolean);v2=(Uninit);
    if-eqz p4, :cond_1

    const-string v0, "initial-load"

    .line 200
    .local v0, contentReadyClass:Ljava/lang/String;
    :goto_0
    #v0=(Reference);
    sget-object v1, Lcom/android/mail/ui/HtmlConversationTemplates;->sConversationLower:Ljava/lang/String;

    #v1=(Reference);
    const/16 v2, 0xa

    #v2=(PosByte);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    aput-object v0, v2, v5

    iget-object v3, p0, Lcom/android/mail/ui/HtmlConversationTemplates;->mContext:Landroid/content/Context;

    #v3=(Reference);
    const v4, 0x7f0a00bd

    #v4=(Integer);
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/mail/ui/HtmlConversationTemplates;->mContext:Landroid/content/Context;

    const v4, 0x7f0a00bc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x3

    #v3=(PosByte);
    aput-object p1, v2, v3

    const/4 v3, 0x4

    aput-object p2, v2, v3

    const/4 v3, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/mail/ui/HtmlConversationTemplates;->append(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    iput-boolean v5, p0, Lcom/android/mail/ui/HtmlConversationTemplates;->mInProgress:Z

    .line 207
    sget-object v1, Lcom/android/mail/ui/HtmlConversationTemplates;->TAG:Ljava/lang/String;

    const-string v2, "rendered conversation of %d bytes, buffer capacity=%d"

    new-array v3, v7, [Ljava/lang/Object;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/mail/ui/HtmlConversationTemplates;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    #v4=(Integer);
    shl-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/mail/ui/HtmlConversationTemplates;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->capacity()I

    move-result v4

    #v4=(Integer);
    shl-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 210
    invoke-virtual {p0}, Lcom/android/mail/ui/HtmlConversationTemplates;->emit()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 198
    .end local v0           #contentReadyClass:Ljava/lang/String;
    :cond_1
    #v0=(Uninit);v1=(Boolean);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    const-string v0, ""

    #v0=(Reference);
    goto :goto_0
.end method

.method public getMessageDomId(Lcom/android/mail/ui/HtmlMessage;)Ljava/lang/String;
    .locals 3
    .parameter "msg"

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "m"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/mail/ui/HtmlMessage;->getId()J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    const/high16 v1, 0x1

    #v1=(Integer);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/HtmlConversationTemplates;->mBuilder:Ljava/lang/StringBuilder;

    .line 223
    new-instance v0, Ljava/util/Formatter;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/mail/ui/HtmlConversationTemplates;->mBuilder:Ljava/lang/StringBuilder;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/HtmlConversationTemplates;->mFormatter:Ljava/util/Formatter;

    .line 224
    return-void
.end method

.method public startConversation(II)V
    .locals 6
    .parameter "sideMargin"
    .parameter "conversationHeaderHeight"

    .prologue
    const/4 v5, 0x1

    .line 180
    #v5=(One);
    iget-boolean v1, p0, Lcom/android/mail/ui/HtmlConversationTemplates;->mInProgress:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 181
    new-instance v1, Ljava/lang/IllegalStateException;

    #v1=(UninitRef);
    const-string v2, "must call startConversation first"

    #v2=(Reference);
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 184
    :cond_0
    #v1=(Boolean);v2=(Uninit);
    invoke-virtual {p0}, Lcom/android/mail/ui/HtmlConversationTemplates;->reset()V

    .line 185
    invoke-static {}, Lcom/android/mail/utils/Utils;->isRunningKitkatOrLater()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "img[blocked-src] { border: 1px solid #CCCCCC; }"

    .line 187
    .local v0, border:Ljava/lang/String;
    :goto_0
    #v0=(Reference);
    sget-object v1, Lcom/android/mail/ui/HtmlConversationTemplates;->sConversationUpper:Ljava/lang/String;

    #v1=(Reference);
    const/4 v2, 0x3

    #v2=(PosByte);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    aput-object v0, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v2, v5

    const/4 v3, 0x2

    #v3=(PosByte);
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/mail/ui/HtmlConversationTemplates;->append(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    iput-boolean v5, p0, Lcom/android/mail/ui/HtmlConversationTemplates;->mInProgress:Z

    .line 189
    return-void

    .line 185
    .end local v0           #border:Ljava/lang/String;
    :cond_1
    #v0=(Uninit);v1=(Boolean);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    const-string v0, ""

    #v0=(Reference);
    goto :goto_0
.end method
