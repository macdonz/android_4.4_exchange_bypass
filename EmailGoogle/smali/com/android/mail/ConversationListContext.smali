.class public Lcom/android/mail/ConversationListContext;
.super Ljava/lang/Object;
.source "ConversationListContext.java"


# static fields
.field private static final sUrlMatcher:Landroid/content/UriMatcher;


# instance fields
.field public final account:Lcom/android/mail/providers/Account;

.field public final folder:Lcom/android/mail/providers/Folder;

.field public final searchQuery:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 46
    new-instance v0, Landroid/content/UriMatcher;

    #v0=(UninitRef);
    const/4 v1, -0x1

    #v1=(Byte);
    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ConversationListContext;->sUrlMatcher:Landroid/content/UriMatcher;

    .line 61
    sget-object v0, Lcom/android/mail/ConversationListContext;->sUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.mail.providers"

    #v1=(Reference);
    const-string v2, "account/*/folder/*"

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    return-void
.end method

.method private constructor <init>(Lcom/android/mail/providers/Account;Ljava/lang/String;Lcom/android/mail/providers/Folder;)V
    .locals 0
    .parameter "a"
    .parameter "query"
    .parameter "f"

    .prologue
    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/mail/ConversationListContext;->account:Lcom/android/mail/providers/Account;

    .line 103
    iput-object p2, p0, Lcom/android/mail/ConversationListContext;->searchQuery:Ljava/lang/String;

    .line 104
    iput-object p3, p0, Lcom/android/mail/ConversationListContext;->folder:Lcom/android/mail/providers/Folder;

    .line 105
    return-void
.end method

.method public static forBundle(Landroid/os/Bundle;)Lcom/android/mail/ConversationListContext;
    .locals 4
    .parameter "bundle"

    .prologue
    .line 70
    const-string v2, "account"

    #v2=(Reference);
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Account;

    .line 71
    .local v0, account:Lcom/android/mail/providers/Account;
    const-string v2, "folder"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/providers/Folder;

    .line 72
    .local v1, folder:Lcom/android/mail/providers/Folder;
    new-instance v2, Lcom/android/mail/ConversationListContext;

    #v2=(UninitRef);
    const-string v3, "query"

    #v3=(Reference);
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1}, Lcom/android/mail/ConversationListContext;-><init>(Lcom/android/mail/providers/Account;Ljava/lang/String;Lcom/android/mail/providers/Folder;)V

    #v2=(Reference);
    return-object v2
.end method

.method public static forFolder(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)Lcom/android/mail/ConversationListContext;
    .locals 2
    .parameter "account"
    .parameter "folder"

    .prologue
    .line 82
    new-instance v0, Lcom/android/mail/ConversationListContext;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p0, v1, p1}, Lcom/android/mail/ConversationListContext;-><init>(Lcom/android/mail/providers/Account;Ljava/lang/String;Lcom/android/mail/providers/Folder;)V

    #v0=(Reference);
    return-object v0
.end method

.method public static forSearchQuery(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;Ljava/lang/String;)Lcom/android/mail/ConversationListContext;
    .locals 2
    .parameter "account"
    .parameter "folder"
    .parameter "query"

    .prologue
    .line 90
    new-instance v1, Lcom/android/mail/ConversationListContext;

    #v1=(UninitRef);
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/mail/ConversationListContext;-><init>(Lcom/android/mail/providers/Account;Ljava/lang/String;Lcom/android/mail/providers/Folder;)V

    #v1=(Reference);
    return-object v1
.end method

.method public static final isSearchResult(Lcom/android/mail/ConversationListContext;)Z
    .locals 1
    .parameter "in"

    .prologue
    .line 113
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ConversationListContext;->searchQuery:Ljava/lang/String;

    #v0=(Reference);
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 120
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 121
    .local v0, result:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v1, "account"

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/ConversationListContext;->account:Lcom/android/mail/providers/Account;

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 122
    const-string v1, "query"

    iget-object v2, p0, Lcom/android/mail/ConversationListContext;->searchQuery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v1, "folder"

    iget-object v2, p0, Lcom/android/mail/ConversationListContext;->folder:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 124
    return-object v0
.end method
