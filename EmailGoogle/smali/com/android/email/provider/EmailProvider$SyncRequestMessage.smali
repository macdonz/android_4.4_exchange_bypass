.class Lcom/android/email/provider/EmailProvider$SyncRequestMessage;
.super Ljava/lang/Object;
.source "EmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/EmailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncRequestMessage"
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mAuthority:Ljava/lang/String;

.field private final mMailboxId:J

.field final synthetic this$0:Lcom/android/email/provider/EmailProvider;


# direct methods
.method private constructor <init>(Lcom/android/email/provider/EmailProvider;Ljava/lang/String;Landroid/accounts/Account;J)V
    .locals 0
    .parameter
    .parameter "authority"
    .parameter "account"
    .parameter "mailboxId"

    .prologue
    .line 5525
    iput-object p1, p0, Lcom/android/email/provider/EmailProvider$SyncRequestMessage;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5526
    #p0=(Reference);
    iput-object p2, p0, Lcom/android/email/provider/EmailProvider$SyncRequestMessage;->mAuthority:Ljava/lang/String;

    .line 5527
    iput-object p3, p0, Lcom/android/email/provider/EmailProvider$SyncRequestMessage;->mAccount:Landroid/accounts/Account;

    .line 5528
    iput-wide p4, p0, Lcom/android/email/provider/EmailProvider$SyncRequestMessage;->mMailboxId:J

    .line 5529
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/provider/EmailProvider;Ljava/lang/String;Landroid/accounts/Account;JLcom/android/email/provider/EmailProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 5519
    invoke-direct/range {p0 .. p5}, Lcom/android/email/provider/EmailProvider$SyncRequestMessage;-><init>(Lcom/android/email/provider/EmailProvider;Ljava/lang/String;Landroid/accounts/Account;J)V

    #p0=(Reference);
    return-void
.end method

.method static synthetic access$1000(Lcom/android/email/provider/EmailProvider$SyncRequestMessage;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5519
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider$SyncRequestMessage;->mAuthority:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/provider/EmailProvider$SyncRequestMessage;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5519
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider$SyncRequestMessage;->mAccount:Landroid/accounts/Account;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/provider/EmailProvider$SyncRequestMessage;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 5519
    iget-wide v0, p0, Lcom/android/email/provider/EmailProvider$SyncRequestMessage;->mMailboxId:J

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 5533
    #v2=(Null);
    if-ne p0, p1, :cond_1

    .line 5542
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return v1

    .line 5536
    :cond_1
    #v0=(Uninit);v1=(One);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    #v4=(Reference);
    if-eq v3, v4, :cond_3

    :cond_2
    #v3=(Conflicted);v4=(Conflicted);
    move v1, v2

    .line 5537
    #v1=(Null);
    goto :goto_0

    :cond_3
    #v1=(One);v3=(Reference);v4=(Reference);
    move-object v0, p1

    .line 5540
    #v0=(Reference);
    check-cast v0, Lcom/android/email/provider/EmailProvider$SyncRequestMessage;

    .line 5542
    .local v0, that:Lcom/android/email/provider/EmailProvider$SyncRequestMessage;
    iget-object v3, p0, Lcom/android/email/provider/EmailProvider$SyncRequestMessage;->mAccount:Landroid/accounts/Account;

    iget-object v4, v0, Lcom/android/email/provider/EmailProvider$SyncRequestMessage;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v3, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget-wide v3, p0, Lcom/android/email/provider/EmailProvider$SyncRequestMessage;->mMailboxId:J

    #v3=(LongLo);v4=(LongHi);
    iget-wide v5, v0, Lcom/android/email/provider/EmailProvider$SyncRequestMessage;->mMailboxId:J

    #v5=(LongLo);v6=(LongHi);
    cmp-long v3, v3, v5

    #v3=(Byte);
    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/email/provider/EmailProvider$SyncRequestMessage;->mAuthority:Ljava/lang/String;

    #v3=(Reference);
    iget-object v4, v0, Lcom/android/email/provider/EmailProvider$SyncRequestMessage;->mAuthority:Ljava/lang/String;

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    :cond_4
    #v3=(Byte);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    move v1, v2

    #v1=(Null);
    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 5549
    iget-object v1, p0, Lcom/android/email/provider/EmailProvider$SyncRequestMessage;->mAuthority:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 5550
    .local v0, result:I
    #v0=(Integer);
    mul-int/lit8 v1, v0, 0x1f

    #v1=(Integer);
    iget-object v2, p0, Lcom/android/email/provider/EmailProvider$SyncRequestMessage;->mAccount:Landroid/accounts/Account;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/accounts/Account;->hashCode()I

    move-result v2

    #v2=(Integer);
    add-int v0, v1, v2

    .line 5551
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/android/email/provider/EmailProvider$SyncRequestMessage;->mMailboxId:J

    #v2=(LongLo);v3=(LongHi);
    iget-wide v4, p0, Lcom/android/email/provider/EmailProvider$SyncRequestMessage;->mMailboxId:J

    #v4=(LongLo);v5=(LongHi);
    const/16 v6, 0x20

    #v6=(PosByte);
    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    #v2=(Integer);
    add-int v0, v1, v2

    .line 5552
    return v0
.end method
