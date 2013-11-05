.class Lcom/android/email/activity/setup/AccountSettingsFragment$1;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsFragment;->loadSettingsOffMainThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 562
    #v3=(Null);
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/mail/providers/Account;

    move-result-object v0

    if-nez v0, :cond_1

    .line 612
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Reference);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    return-void

    .line 565
    :cond_1
    #v0=(Reference);v1=(Uninit);v2=(Uninit);v3=(Null);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/mail/providers/Account;

    move-result-object v1

    iget-object v1, v1, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    iget-object v1, v1, Lcom/android/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    sget-object v2, Lcom/android/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    move-object v4, v3

    #v4=(Null);
    move-object v5, v3

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 568
    .local v9, folderCursor:Landroid/database/Cursor;
    #v9=(Reference);
    if-eqz v9, :cond_0

    .line 574
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_3

    .line 575
    new-instance v8, Lcom/android/mail/providers/Folder;

    #v8=(UninitRef);
    invoke-direct {v8, v9}, Lcom/android/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    .local v8, folder:Lcom/android/mail/providers/Folder;
    #v8=(Reference);
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 583
    new-instance v6, Lcom/android/mail/preferences/AccountPreferences;

    #v6=(UninitRef);
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/mail/providers/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/android/mail/preferences/AccountPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 585
    .local v6, accountPreferences:Lcom/android/mail/preferences/AccountPreferences;
    #v6=(Reference);
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    new-instance v1, Lcom/android/mail/preferences/FolderPreferences;

    #v1=(UninitRef);
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/mail/providers/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    #v4=(One);
    invoke-direct {v1, v2, v3, v8, v4}, Lcom/android/mail/preferences/FolderPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/mail/providers/Folder;Z)V

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$902(Lcom/android/email/activity/setup/AccountSettingsFragment;Lcom/android/mail/preferences/FolderPreferences;)Lcom/android/mail/preferences/FolderPreferences;

    .line 588
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$900(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/mail/preferences/FolderPreferences;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/mail/utils/NotificationUtils;->moveNotificationSetting(Lcom/android/mail/preferences/AccountPreferences;Lcom/android/mail/preferences/FolderPreferences;)V

    .line 591
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$900(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/mail/preferences/FolderPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/preferences/FolderPreferences;->getNotificationRingtoneUri()Ljava/lang/String;

    move-result-object v10

    .line 592
    .local v10, ringtoneUri:Ljava/lang/String;
    #v10=(Reference);
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_2

    .line 593
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1002(Lcom/android/email/activity/setup/AccountSettingsFragment;Landroid/media/Ringtone;)Landroid/media/Ringtone;

    .line 596
    :cond_2
    #v0=(Conflicted);
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 597
    .local v7, activity:Landroid/app/Activity;
    #v7=(Reference);
    if-eqz v7, :cond_0

    .line 598
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsFragment$1$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$1$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment$1;)V

    #v0=(Reference);
    invoke-virtual {v7, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 580
    .end local v6           #accountPreferences:Lcom/android/mail/preferences/AccountPreferences;
    .end local v7           #activity:Landroid/app/Activity;
    .end local v8           #folder:Lcom/android/mail/providers/Folder;
    .end local v10           #ringtoneUri:Ljava/lang/String;
    :cond_3
    #v0=(Boolean);v3=(Null);v4=(Null);v6=(Uninit);v7=(Uninit);v8=(Uninit);v10=(Uninit);
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    #v0=(Conflicted);v8=(Conflicted);
    move-exception v0

    #v0=(Reference);
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method
