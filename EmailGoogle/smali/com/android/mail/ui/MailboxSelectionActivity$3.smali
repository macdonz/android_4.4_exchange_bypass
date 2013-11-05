.class Lcom/android/mail/ui/MailboxSelectionActivity$3;
.super Landroid/widget/SimpleCursorAdapter;
.source "MailboxSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/MailboxSelectionActivity;->updateAccountList(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/MailboxSelectionActivity;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/MailboxSelectionActivity;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .locals 7
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/mail/ui/MailboxSelectionActivity$3;->this$0:Lcom/android/mail/ui/MailboxSelectionActivity;

    move-object v0, p0

    #v0=(UninitThis);
    move-object v1, p2

    #v1=(Reference);
    move v2, p3

    #v2=(Integer);
    move-object v3, p4

    #v3=(Reference);
    move-object v4, p5

    #v4=(Reference);
    move-object v5, p6

    #v5=(Reference);
    move v6, p7

    #v6=(Integer);
    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    #v0=(Reference);p0=(Reference);
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 260
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 261
    .local v1, v:Landroid/view/View;
    #v1=(Reference);
    const v2, 0x7f08010d

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    .line 262
    .local v0, accountView:Landroid/widget/TextView;
    new-instance v3, Lcom/android/mail/providers/Account;

    #v3=(UninitRef);
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/MailboxSelectionActivity$3;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/database/Cursor;

    invoke-direct {v3, v2}, Lcom/android/mail/providers/Account;-><init>(Landroid/database/Cursor;)V

    #v3=(Reference);
    iget-object v2, v3, Lcom/android/mail/providers/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    return-object v1
.end method
