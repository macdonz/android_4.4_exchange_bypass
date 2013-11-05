.class public Lcom/android/calendarcommon2/ICalendar$Component;
.super Ljava/lang/Object;
.source "ICalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendarcommon2/ICalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Component"
.end annotation


# instance fields
.field private mChildren:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/calendarcommon2/ICalendar$Component;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mPropsMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendarcommon2/ICalendar$Property;",
            ">;>;"
        }
    .end annotation
.end field


# virtual methods
.method public getProperties(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendarcommon2/ICalendar$Property;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/calendarcommon2/ICalendar$Component;->mPropsMap:Ljava/util/LinkedHashMap;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getPropertyNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/calendarcommon2/ICalendar$Component;->mPropsMap:Ljava/util/LinkedHashMap;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v0, sb:Ljava/lang/StringBuilder;
    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/calendarcommon2/ICalendar$Component;->toString(Ljava/lang/StringBuilder;)V

    .line 183
    const-string v1, "\n"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 6
    .parameter "sb"

    .prologue
    .line 193
    const-string v5, "BEGIN"

    #v5=(Reference);
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v5, ":"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v5, p0, Lcom/android/calendarcommon2/ICalendar$Component;->mName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v5, "\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p0}, Lcom/android/calendarcommon2/ICalendar$Component;->getPropertyNames()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    #v1=(Reference);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Ljava/lang/String;

    .line 200
    .local v4, propertyName:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/calendarcommon2/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    #v5=(Reference);
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    #v2=(Reference);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/android/calendarcommon2/ICalendar$Property;

    .line 201
    .local v3, property:Lcom/android/calendarcommon2/ICalendar$Property;
    invoke-virtual {v3, p1}, Lcom/android/calendarcommon2/ICalendar$Property;->toString(Ljava/lang/StringBuilder;)V

    .line 202
    const-string v5, "\n"

    #v5=(Reference);
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 207
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #property:Lcom/android/calendarcommon2/ICalendar$Property;
    .end local v4           #propertyName:Ljava/lang/String;
    :cond_1
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Boolean);
    iget-object v5, p0, Lcom/android/calendarcommon2/ICalendar$Component;->mChildren:Ljava/util/LinkedList;

    #v5=(Reference);
    if-eqz v5, :cond_2

    .line 208
    iget-object v5, p0, Lcom/android/calendarcommon2/ICalendar$Component;->mChildren:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    #v0=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/calendarcommon2/ICalendar$Component;

    .line 209
    .local v0, component:Lcom/android/calendarcommon2/ICalendar$Component;
    invoke-virtual {v0, p1}, Lcom/android/calendarcommon2/ICalendar$Component;->toString(Ljava/lang/StringBuilder;)V

    .line 210
    const-string v5, "\n"

    #v5=(Reference);
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 214
    .end local v0           #component:Lcom/android/calendarcommon2/ICalendar$Component;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    #v0=(Conflicted);v5=(Conflicted);
    const-string v5, "END"

    #v5=(Reference);
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v5, ":"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget-object v5, p0, Lcom/android/calendarcommon2/ICalendar$Component;->mName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    return-void
.end method
