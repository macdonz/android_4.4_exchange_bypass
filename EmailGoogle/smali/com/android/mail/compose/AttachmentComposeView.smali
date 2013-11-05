.class Lcom/android/mail/compose/AttachmentComposeView;
.super Landroid/widget/LinearLayout;
.source "AttachmentComposeView.java"

# interfaces
.implements Lcom/android/mail/compose/AttachmentDeletionInterface;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mAttachment:Lcom/android/mail/providers/Attachment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/compose/AttachmentComposeView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mail/providers/Attachment;)V
    .locals 7
    .parameter "c"
    .parameter "attachment"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    #p0=(Reference);
    iput-object p2, p0, Lcom/android/mail/compose/AttachmentComposeView;->mAttachment:Lcom/android/mail/providers/Attachment;

    .line 45
    sget-object v3, Lcom/android/mail/compose/AttachmentComposeView;->LOG_TAG:Ljava/lang/String;

    #v3=(Reference);
    const/4 v4, 0x3

    #v4=(PosByte);
    invoke-static {v3, v4}, Lcom/android/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, attachStr:Ljava/lang/String;
    :try_start_0
    #v0=(Null);
    invoke-virtual {p2}, Lcom/android/mail/providers/Attachment;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    #v3=(Reference);
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 52
    :goto_0
    #v0=(Reference);v1=(Conflicted);v3=(Conflicted);
    sget-object v3, Lcom/android/mail/compose/AttachmentComposeView;->LOG_TAG:Ljava/lang/String;

    #v3=(Reference);
    const-string v4, "attachment view: %s"

    #v4=(Reference);
    const/4 v5, 0x1

    #v5=(One);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 55
    .end local v0           #attachStr:Ljava/lang/String;
    :cond_0
    #v0=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    invoke-virtual {p0}, Lcom/android/mail/compose/AttachmentComposeView;->getContext()Landroid/content/Context;

    move-result-object v3

    #v3=(Reference);
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 57
    .local v2, factory:Landroid/view/LayoutInflater;
    #v2=(Reference);
    const v3, 0x7f040015

    #v3=(Integer);
    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/mail/compose/AttachmentComposeView;->populateAttachmentData(Landroid/content/Context;)V

    .line 59
    return-void

    .line 49
    .end local v2           #factory:Landroid/view/LayoutInflater;
    .restart local v0       #attachStr:Ljava/lang/String;
    :catch_0
    #v0=(Null);v1=(Uninit);v2=(Uninit);v3=(Conflicted);v4=(PosByte);v5=(Uninit);v6=(Uninit);
    move-exception v1

    .line 50
    .local v1, e:Lorg/json/JSONException;
    #v1=(Reference);
    invoke-virtual {p2}, Lcom/android/mail/providers/Attachment;->toString()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0
.end method

.method private populateAttachmentData(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const v2, 0x7f080068

    .line 68
    #v2=(Integer);
    const v0, 0x7f080067

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/compose/AttachmentComposeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mail/compose/AttachmentComposeView;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/android/mail/compose/AttachmentComposeView;->mAttachment:Lcom/android/mail/providers/Attachment;

    iget v0, v0, Lcom/android/mail/providers/Attachment;->size:I

    #v0=(Integer);
    if-lez v0, :cond_0

    .line 71
    invoke-virtual {p0, v2}, Lcom/android/mail/compose/AttachmentComposeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mail/compose/AttachmentComposeView;->mAttachment:Lcom/android/mail/providers/Attachment;

    iget v1, v1, Lcom/android/mail/providers/Attachment;->size:I

    #v1=(Integer);
    int-to-long v1, v1

    #v1=(LongLo);v2=(LongHi);
    invoke-static {p1, v1, v2}, Lcom/android/mail/utils/AttachmentUtils;->convertToHumanReadableSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 74
    :cond_0
    #v0=(Integer);v1=(Reference);v2=(Integer);
    invoke-virtual {p0, v2}, Lcom/android/mail/compose/AttachmentComposeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public addDeleteListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "clickListener"

    .prologue
    .line 63
    const v1, 0x7f080069

    #v1=(Integer);
    invoke-virtual {p0, v1}, Lcom/android/mail/compose/AttachmentComposeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/ImageButton;

    .line 64
    .local v0, deleteButton:Landroid/widget/ImageButton;
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method
