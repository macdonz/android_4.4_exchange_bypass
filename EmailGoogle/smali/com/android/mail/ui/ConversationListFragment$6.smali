.class Lcom/android/mail/ui/ConversationListFragment$6;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Lcom/android/mail/ui/ConversationSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ConversationListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 963
    iput-object p1, p0, Lcom/android/mail/ui/ConversationListFragment$6;->this$0:Lcom/android/mail/ui/ConversationListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onSetChanged(Lcom/android/mail/ui/ConversationSelectionSet;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 977
    return-void
.end method

.method public onSetEmpty()V
    .locals 3

    .prologue
    .line 971
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment$6;->this$0:Lcom/android/mail/ui/ConversationListFragment;

    #v0=(Reference);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v0, v1, v2}, Lcom/android/mail/ui/ConversationListFragment;->access$702(Lcom/android/mail/ui/ConversationListFragment;J)J

    .line 972
    return-void
.end method

.method public onSetPopulated(Lcom/android/mail/ui/ConversationSelectionSet;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 967
    return-void
.end method
