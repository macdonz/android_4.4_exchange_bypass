.class Lcom/android/mail/utils/Utils$MarkConversationCursorVisibleTask;
.super Landroid/os/AsyncTask;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/utils/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MarkConversationCursorVisibleTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCursor:Landroid/database/Cursor;

.field private final mIsFirstSeen:Z

.field private final mVisible:Z


# direct methods
.method public constructor <init>(Landroid/database/Cursor;ZZ)V
    .locals 0
    .parameter "cursor"
    .parameter "isVisible"
    .parameter "isFirstSeen"

    .prologue
    .line 1199
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1200
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/mail/utils/Utils$MarkConversationCursorVisibleTask;->mCursor:Landroid/database/Cursor;

    .line 1201
    iput-boolean p2, p0, Lcom/android/mail/utils/Utils$MarkConversationCursorVisibleTask;->mVisible:Z

    .line 1202
    iput-boolean p3, p0, Lcom/android/mail/utils/Utils$MarkConversationCursorVisibleTask;->mIsFirstSeen:Z

    .line 1203
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1185
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mail/utils/Utils$MarkConversationCursorVisibleTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 1207
    #v4=(Null);
    iget-object v2, p0, Lcom/android/mail/utils/Utils$MarkConversationCursorVisibleTask;->mCursor:Landroid/database/Cursor;

    #v2=(Reference);
    if-nez v2, :cond_0

    .line 1218
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);
    return-object v4

    .line 1210
    :cond_0
    #v0=(Uninit);v1=(Uninit);v3=(Uninit);
    new-instance v1, Landroid/os/Bundle;

    #v1=(UninitRef);
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1211
    .local v1, request:Landroid/os/Bundle;
    #v1=(Reference);
    iget-boolean v2, p0, Lcom/android/mail/utils/Utils$MarkConversationCursorVisibleTask;->mIsFirstSeen:Z

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 1212
    const-string v2, "enteredFolder"

    #v2=(Reference);
    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1215
    :cond_1
    #v2=(Conflicted);v3=(Conflicted);
    const-string v0, "setVisibility"

    .line 1216
    .local v0, key:Ljava/lang/String;
    #v0=(Reference);
    const-string v2, "setVisibility"

    #v2=(Reference);
    iget-boolean v3, p0, Lcom/android/mail/utils/Utils$MarkConversationCursorVisibleTask;->mVisible:Z

    #v3=(Boolean);
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1217
    iget-object v2, p0, Lcom/android/mail/utils/Utils$MarkConversationCursorVisibleTask;->mCursor:Landroid/database/Cursor;

    const-string v3, "setVisibility"

    #v3=(Reference);
    invoke-static {v2, v1, v3}, Lcom/android/mail/utils/Utils;->access$000(Landroid/database/Cursor;Landroid/os/Bundle;Ljava/lang/String;)Z

    goto :goto_0
.end method
