.class public Lcom/android/emailsync/SyncManager$AccountList;
.super Ljava/util/ArrayList;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailsync/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccountList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/emailcommon/provider/Account;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mAmMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/emailcommon/provider/Account;",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/emailsync/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/emailsync/SyncManager;)V
    .locals 1
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/emailsync/SyncManager$AccountList;->this$0:Lcom/android/emailsync/SyncManager;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 296
    #p0=(Reference);
    new-instance v0, Ljava/util/WeakHashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailsync/SyncManager$AccountList;->mAmMap:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/emailcommon/provider/Account;)Z
    .locals 2
    .parameter "account"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/emailsync/SyncManager$AccountList;->mAmMap:Ljava/util/WeakHashMap;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/emailsync/SyncManager$AccountList;->this$0:Lcom/android/emailsync/SyncManager;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/emailsync/SyncManager;->getAccountManagerType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/emailcommon/provider/Account;->getAccountManagerAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 293
    check-cast p1, Lcom/android/emailcommon/provider/Account;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/emailsync/SyncManager$AccountList;->add(Lcom/android/emailcommon/provider/Account;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public contains(J)Z
    .locals 4
    .parameter "id"

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/android/emailsync/SyncManager$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    #v0=(Conflicted);v1=(Reference);v2=(Conflicted);v3=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 313
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v2=(LongLo);v3=(LongHi);
    cmp-long v2, v2, p1

    #v2=(Byte);
    if-nez v2, :cond_0

    .line 314
    const/4 v2, 0x1

    .line 317
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    :goto_0
    #v0=(Conflicted);v2=(Boolean);v3=(Conflicted);
    return v2

    :cond_1
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0
.end method

.method public getAmAccount(Lcom/android/emailcommon/provider/Account;)Landroid/accounts/Account;
    .locals 1
    .parameter "account"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/emailsync/SyncManager$AccountList;->mAmMap:Ljava/util/WeakHashMap;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    return-object v0
.end method

.method public getById(J)Lcom/android/emailcommon/provider/Account;
    .locals 4
    .parameter "id"

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/android/emailsync/SyncManager$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    #v0=(Conflicted);v1=(Reference);v2=(Conflicted);v3=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 322
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v2=(LongLo);v3=(LongHi);
    cmp-long v2, v2, p1

    #v2=(Byte);
    if-nez v2, :cond_0

    .line 326
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    :goto_0
    #v3=(Conflicted);
    return-object v0

    :cond_1
    #v0=(Conflicted);v2=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method
