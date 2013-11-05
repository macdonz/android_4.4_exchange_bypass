.class public Lcom/android/mail/browse/EmailCopyContextMenu;
.super Ljava/lang/Object;
.source "EmailCopyContextMenu.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/browse/EmailCopyContextMenu$Copy;
    }
.end annotation


# instance fields
.field private mAddress:Ljava/lang/CharSequence;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/mail/browse/EmailCopyContextMenu;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/mail/browse/EmailCopyContextMenu;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/mail/browse/EmailCopyContextMenu;->copy(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private copy(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/mail/browse/EmailCopyContextMenu;->mContext:Landroid/content/Context;

    #v1=(Reference);
    const-string v2, "clipboard"

    #v2=(Reference);
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/content/ClipboardManager;

    .line 87
    .local v0, clipboard:Landroid/content/ClipboardManager;
    const/4 v1, 0x0

    #v1=(Null);
    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 88
    return-void
.end method

.method private static getMenuResourceId()I
    .locals 1

    .prologue
    .line 115
    const v0, 0x7f110006

    #v0=(Integer);
    return v0
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "v"
    .parameter "info"

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/mail/browse/EmailCopyContextMenu;->mAddress:Ljava/lang/CharSequence;

    #v1=(Reference);
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 101
    new-instance v0, Landroid/view/MenuInflater;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/mail/browse/EmailCopyContextMenu;->mContext:Landroid/content/Context;

    #v1=(Reference);
    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 102
    .local v0, inflater:Landroid/view/MenuInflater;
    #v0=(Reference);
    invoke-static {}, Lcom/android/mail/browse/EmailCopyContextMenu;->getMenuResourceId()I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 105
    iget-object v1, p0, Lcom/android/mail/browse/EmailCopyContextMenu;->mAddress:Ljava/lang/CharSequence;

    #v1=(Reference);
    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 106
    const v1, 0x7f080181

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    #v1=(Reference);
    new-instance v2, Landroid/content/Intent;

    #v2=(UninitRef);
    const-string v3, "android.intent.action.VIEW"

    #v3=(Reference);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    const-string v5, "mailto:"

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mail/browse/EmailCopyContextMenu;->mAddress:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #v2=(Reference);
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 108
    const v1, 0x7f080182

    #v1=(Integer);
    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    #v1=(Reference);
    new-instance v2, Lcom/android/mail/browse/EmailCopyContextMenu$Copy;

    #v2=(UninitRef);
    iget-object v3, p0, Lcom/android/mail/browse/EmailCopyContextMenu;->mAddress:Ljava/lang/CharSequence;

    invoke-direct {v2, p0, v3}, Lcom/android/mail/browse/EmailCopyContextMenu$Copy;-><init>(Lcom/android/mail/browse/EmailCopyContextMenu;Ljava/lang/CharSequence;)V

    #v2=(Reference);
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 111
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void
.end method

.method public setAddress(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/mail/browse/EmailCopyContextMenu;->mAddress:Ljava/lang/CharSequence;

    .line 92
    return-void
.end method
