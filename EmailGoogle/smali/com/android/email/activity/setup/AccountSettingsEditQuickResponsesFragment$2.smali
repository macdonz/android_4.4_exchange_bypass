.class Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$2;
.super Ljava/lang/Object;
.source "AccountSettingsEditQuickResponsesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$2;->val$listView:Landroid/widget/ListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$2;->val$listView:Landroid/widget/ListView;

    #v3=(Reference);
    invoke-virtual {v3, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/database/Cursor;

    .line 136
    .local v0, c:Landroid/database/Cursor;
    const-string v3, "quickResponse"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    #v3=(Integer);
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, quickResponseText:Ljava/lang/String;
    #v1=(Reference);
    const-string v3, "uri"

    #v3=(Reference);
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    #v3=(Integer);
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 140
    .local v2, uri:Landroid/net/Uri;
    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-static {v1, v2, v3}, Lcom/android/email/activity/setup/EditQuickResponseDialog;->newInstance(Ljava/lang/String;Landroid/net/Uri;Z)Lcom/android/email/activity/setup/EditQuickResponseDialog;

    move-result-object v3

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;

    #v4=(Reference);
    invoke-virtual {v4}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual {v3, v4, v5}, Lcom/android/email/activity/setup/EditQuickResponseDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 142
    return-void
.end method
