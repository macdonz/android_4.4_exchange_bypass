.class public Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ImageAction;
.super Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageAction"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;


# direct methods
.method public constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V
    .locals 0
    .parameter

    .prologue
    .line 3129
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ImageAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method protected doNotSelected()Z
    .locals 3

    .prologue
    .line 3132
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {p0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ImageAction;->getParam(I)Ljava/lang/Object;

    move-result-object v0

    .line 3133
    .local v0, param:Ljava/lang/Object;
    #v0=(Reference);
    if-eqz v0, :cond_2

    .line 3134
    instance-of v1, v0, Landroid/net/Uri;

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 3135
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ImageAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    check-cast v0, Landroid/net/Uri;

    .end local v0           #param:Ljava/lang/Object;
    invoke-static {v1, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->access$3600(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;Landroid/net/Uri;)V

    .line 3142
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    const/4 v1, 0x1

    #v1=(One);
    return v1

    .line 3136
    .restart local v0       #param:Ljava/lang/Object;
    :cond_1
    #v1=(Boolean);v2=(Uninit);
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 3137
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ImageAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    check-cast v0, Ljava/lang/Integer;

    .end local v0           #param:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    #v2=(Integer);
    invoke-static {v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->access$3700(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V

    goto :goto_0

    .line 3140
    .restart local v0       #param:Ljava/lang/Object;
    :cond_2
    #v1=(Null);v2=(Uninit);
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$ImageAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$1800(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->access$3800(Lcom/android/ex/editstyledtext/EditStyledText;)V

    goto :goto_0
.end method
