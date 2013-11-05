.class Lcom/android/mail/browse/MessageAttachmentBar$1;
.super Ljava/lang/Object;
.source "MessageAttachmentBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/MessageAttachmentBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/browse/MessageAttachmentBar;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/MessageAttachmentBar;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/mail/browse/MessageAttachmentBar$1;->this$0:Lcom/android/mail/browse/MessageAttachmentBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar$1;->this$0:Lcom/android/mail/browse/MessageAttachmentBar;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/browse/MessageAttachmentBar;->access$000(Lcom/android/mail/browse/MessageAttachmentBar;)V

    .line 79
    return-void
.end method
