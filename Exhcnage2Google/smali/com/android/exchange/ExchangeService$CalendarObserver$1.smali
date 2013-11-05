.class Lcom/android/exchange/ExchangeService$CalendarObserver$1;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService$CalendarObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService$CalendarObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/exchange/ExchangeService$CalendarObserver$1;->this$1:Lcom/android/exchange/ExchangeService$CalendarObserver;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/exchange/ExchangeService$CalendarObserver;->access$700(Lcom/android/exchange/ExchangeService$CalendarObserver;)V

    .line 506
    return-void
.end method
