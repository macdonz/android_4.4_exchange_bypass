.class Lcom/android/mail/browse/MessageHeaderView$1;
.super Landroid/database/DataSetObserver;
.source "MessageHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/MessageHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/browse/MessageHeaderView;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/MessageHeaderView;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/mail/browse/MessageHeaderView$1;->this$0:Lcom/android/mail/browse/MessageHeaderView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView$1;->this$0:Lcom/android/mail/browse/MessageHeaderView;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/browse/MessageHeaderView;->access$000(Lcom/android/mail/browse/MessageHeaderView;)V

    .line 201
    return-void
.end method
