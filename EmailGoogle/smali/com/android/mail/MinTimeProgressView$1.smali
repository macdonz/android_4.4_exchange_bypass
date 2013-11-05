.class Lcom/android/mail/MinTimeProgressView$1;
.super Ljava/lang/Object;
.source "MinTimeProgressView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/MinTimeProgressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/MinTimeProgressView;


# direct methods
.method constructor <init>(Lcom/android/mail/MinTimeProgressView;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/mail/MinTimeProgressView$1;->this$0:Lcom/android/mail/MinTimeProgressView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mail/MinTimeProgressView$1;->this$0:Lcom/android/mail/MinTimeProgressView;

    #v0=(Reference);
    const/16 v1, 0x8

    #v1=(PosByte);
    invoke-static {v0, v1}, Lcom/android/mail/MinTimeProgressView;->access$001(Lcom/android/mail/MinTimeProgressView;I)V

    .line 59
    return-void
.end method
