.class Lcom/android/mail/browse/ConversationPagerAdapter$1;
.super Lcom/android/mail/providers/FolderObserver;
.source "ConversationPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/ConversationPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/browse/ConversationPagerAdapter;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/ConversationPagerAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/mail/browse/ConversationPagerAdapter$1;->this$0:Lcom/android/mail/browse/ConversationPagerAdapter;

    invoke-direct {p0}, Lcom/android/mail/providers/FolderObserver;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onChanged(Lcom/android/mail/providers/Folder;)V
    .locals 1
    .parameter "newFolder"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter$1;->this$0:Lcom/android/mail/browse/ConversationPagerAdapter;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationPagerAdapter;->notifyDataSetChanged()V

    .line 50
    return-void
.end method
