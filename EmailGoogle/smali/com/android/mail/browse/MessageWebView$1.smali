.class Lcom/android/mail/browse/MessageWebView$1;
.super Ljava/lang/Object;
.source "MessageWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/MessageWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/browse/MessageWebView;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/MessageWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/mail/browse/MessageWebView$1;->this$0:Lcom/android/mail/browse/MessageWebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mail/browse/MessageWebView$1;->this$0:Lcom/android/mail/browse/MessageWebView;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/browse/MessageWebView;->access$000(Lcom/android/mail/browse/MessageWebView;)V

    .line 51
    return-void
.end method
