.class Lcom/android/exchange/ExchangeService$3;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService;->onStartService(Lcom/android/emailcommon/provider/Mailbox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/ExchangeService;

.field final synthetic val$svc:Lcom/android/emailsync/AbstractSyncService;


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService;Lcom/android/emailsync/AbstractSyncService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 751
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$3;->this$0:Lcom/android/exchange/ExchangeService;

    iput-object p2, p0, Lcom/android/exchange/ExchangeService$3;->val$svc:Lcom/android/emailsync/AbstractSyncService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/exchange/ExchangeService$3;->val$svc:Lcom/android/emailsync/AbstractSyncService;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/emailsync/AbstractSyncService;->reset()V

    .line 755
    return-void
.end method
