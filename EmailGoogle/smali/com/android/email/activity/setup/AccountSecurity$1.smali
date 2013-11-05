.class final Lcom/android/email/activity/setup/AccountSecurity$1;
.super Ljava/lang/Object;
.source "AccountSecurity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/Account;Lcom/android/email/SecurityPolicy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account:Lcom/android/emailcommon/provider/Account;

.field final synthetic val$security:Lcom/android/email/SecurityPolicy;


# direct methods
.method constructor <init>(Lcom/android/email/SecurityPolicy;Lcom/android/emailcommon/provider/Account;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->val$security:Lcom/android/email/SecurityPolicy;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->val$account:Lcom/android/emailcommon/provider/Account;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->val$security:Lcom/android/email/SecurityPolicy;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->val$account:Lcom/android/emailcommon/provider/Account;

    #v1=(Reference);
    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Lcom/android/email/SecurityPolicy;->policiesRequired(J)V

    .line 301
    return-void
.end method
