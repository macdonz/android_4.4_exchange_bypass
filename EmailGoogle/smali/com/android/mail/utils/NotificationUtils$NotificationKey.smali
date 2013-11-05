.class Lcom/android/mail/utils/NotificationUtils$NotificationKey;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/utils/NotificationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotificationKey"
.end annotation


# instance fields
.field public final account:Lcom/android/mail/providers/Account;

.field public final folder:Lcom/android/mail/providers/Folder;


# direct methods
.method public constructor <init>(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V
    .locals 0
    .parameter "account"
    .parameter "folder"

    .prologue
    .line 1469
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1470
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/mail/utils/NotificationUtils$NotificationKey;->account:Lcom/android/mail/providers/Account;

    .line 1471
    iput-object p2, p0, Lcom/android/mail/utils/NotificationUtils$NotificationKey;->folder:Lcom/android/mail/providers/Folder;

    .line 1472
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 1476
    #v1=(Null);
    instance-of v2, p1, Lcom/android/mail/utils/NotificationUtils$NotificationKey;

    #v2=(Boolean);
    if-nez v2, :cond_1

    .line 1480
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v3=(Conflicted);
    return v1

    :cond_1
    #v0=(Uninit);v1=(Null);v3=(Uninit);
    move-object v0, p1

    .line 1479
    #v0=(Reference);
    check-cast v0, Lcom/android/mail/utils/NotificationUtils$NotificationKey;

    .line 1480
    .local v0, key:Lcom/android/mail/utils/NotificationUtils$NotificationKey;
    iget-object v2, p0, Lcom/android/mail/utils/NotificationUtils$NotificationKey;->account:Lcom/android/mail/providers/Account;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/mail/providers/Account;->getAccountManagerAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v3, v0, Lcom/android/mail/utils/NotificationUtils$NotificationKey;->account:Lcom/android/mail/providers/Account;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/mail/providers/Account;->getAccountManagerAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mail/utils/NotificationUtils$NotificationKey;->folder:Lcom/android/mail/providers/Folder;

    #v2=(Reference);
    iget-object v3, v0, Lcom/android/mail/utils/NotificationUtils$NotificationKey;->folder:Lcom/android/mail/providers/Folder;

    invoke-virtual {v2, v3}, Lcom/android/mail/providers/Folder;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    const/4 v1, 0x1

    #v1=(One);
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1491
    iget-object v2, p0, Lcom/android/mail/utils/NotificationUtils$NotificationKey;->account:Lcom/android/mail/providers/Account;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/mail/providers/Account;->getAccountManagerAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v2}, Landroid/accounts/Account;->hashCode()I

    move-result v0

    .line 1492
    .local v0, accountHashCode:I
    #v0=(Integer);
    iget-object v2, p0, Lcom/android/mail/utils/NotificationUtils$NotificationKey;->folder:Lcom/android/mail/providers/Folder;

    invoke-virtual {v2}, Lcom/android/mail/providers/Folder;->hashCode()I

    move-result v1

    .line 1493
    .local v1, folderHashCode:I
    #v1=(Integer);
    xor-int v2, v0, v1

    #v2=(Integer);
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1486
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/utils/NotificationUtils$NotificationKey;->account:Lcom/android/mail/providers/Account;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/providers/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/utils/NotificationUtils$NotificationKey;->folder:Lcom/android/mail/providers/Folder;

    iget-object v1, v1, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
