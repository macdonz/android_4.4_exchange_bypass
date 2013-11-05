.class public abstract Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;
.super Landroid/app/DialogFragment;
.source "LimitedMultiSelectDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;,
        Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectDialogListener;
    }
.end annotation


# instance fields
.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectDialogListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 60
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;->mListener:Ljava/lang/ref/WeakReference;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;->mListener:Ljava/lang/ref/WeakReference;

    #v0=(Reference);
    return-object v0
.end method


# virtual methods
.method protected abstract getDialogTitle()Ljava/lang/String;
.end method

.method protected abstract getMaxSelectedValues()I
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    #v8=(Reference);
    const-string v9, "selectedValues"

    #v9=(Reference);
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 81
    .local v6, selectedValuesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    #v6=(Reference);
    invoke-static {v6}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v5

    .line 83
    .local v5, selectedValues:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    #v5=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "entryValues"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 85
    .local v1, entryValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    #v1=(Reference);
    new-instance v0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;

    #v0=(UninitRef);
    invoke-virtual {p0}, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "entries"

    #v10=(Reference);
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;->getMaxSelectedValues()I

    move-result v10

    #v10=(Integer);
    invoke-direct {v0, v8, v9, v1, v10}, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;I)V

    .line 88
    .local v0, adapter:Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;
    #v0=(Reference);
    invoke-virtual {v0, v5}, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->setSelected(Ljava/util/Collection;)V

    .line 90
    new-instance v4, Landroid/widget/ListView;

    #v4=(UninitRef);
    invoke-virtual {p0}, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 91
    .local v4, listView:Landroid/widget/ListView;
    #v4=(Reference);
    const/4 v8, 0x2

    #v8=(PosByte);
    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 92
    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    new-instance v8, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$1;

    #v8=(UninitRef);
    invoke-direct {v8, p0, v5, v0}, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$1;-><init>(Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;Ljava/util/Set;Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;)V

    #v8=(Reference);
    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 118
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    #v2=(Reference);v3=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    #v7=(Reference);
    check-cast v7, Ljava/lang/String;

    .line 119
    .local v7, value:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    #v3=(Integer);
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    #v8=(Integer);
    if-ge v3, v8, :cond_0

    .line 120
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    #v8=(Reference);
    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_1

    .line 121
    const/4 v8, 0x1

    #v8=(One);
    invoke-virtual {v4, v3, v8}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 119
    :cond_1
    #v8=(Boolean);
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    .end local v3           #j:I
    .end local v7           #value:Ljava/lang/String;
    :cond_2
    #v3=(Conflicted);v7=(Conflicted);
    new-instance v8, Landroid/app/AlertDialog$Builder;

    #v8=(UninitRef);
    invoke-virtual {p0}, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #v8=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;->getDialogTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a00c7

    #v9=(Integer);
    new-instance v10, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$3;

    #v10=(UninitRef);
    invoke-direct {v10, p0, v5}, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$3;-><init>(Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;Ljava/util/Set;)V

    #v10=(Reference);
    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a00c8

    new-instance v10, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$2;

    #v10=(UninitRef);
    invoke-direct {v10, p0}, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$2;-><init>(Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;)V

    #v10=(Reference);
    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    return-object v8
.end method
