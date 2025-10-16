.class public Lc/b/h/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lcom/emsportal/activity/SettingNotificationActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/activity/SettingNotificationActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/h/s;->a:Lcom/emsportal/activity/SettingNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 7

    const-class v0, Lc/b/m/d/v;

    invoke-virtual {p1, v0}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/m/d/v;

    invoke-virtual {v0}, Lc/b/m/d/v;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "3"

    const-string v4, "2"

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lc/b/m/d/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    goto :goto_1

    :pswitch_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    :pswitch_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    packed-switch v5, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lc/b/h/s;->a:Lcom/emsportal/activity/SettingNotificationActivity;

    .line 1
    iget-object v1, v1, Lcom/emsportal/activity/SettingNotificationActivity;->e:Landroid/widget/Switch;

    goto :goto_2

    .line 2
    :pswitch_4
    iget-object v1, p0, Lc/b/h/s;->a:Lcom/emsportal/activity/SettingNotificationActivity;

    .line 3
    iget-object v1, v1, Lcom/emsportal/activity/SettingNotificationActivity;->d:Landroid/widget/Switch;

    goto :goto_2

    .line 4
    :pswitch_5
    iget-object v1, p0, Lc/b/h/s;->a:Lcom/emsportal/activity/SettingNotificationActivity;

    .line 5
    iget-object v1, v1, Lcom/emsportal/activity/SettingNotificationActivity;->f:Landroid/widget/Switch;

    .line 6
    :goto_2
    invoke-virtual {v0}, Lc/b/m/d/v;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lc/b/m/d/v;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lc/b/h/s;->a:Lcom/emsportal/activity/SettingNotificationActivity;

    .line 7
    iget-object v1, v1, Lcom/emsportal/activity/SettingNotificationActivity;->g:Landroid/widget/Switch;

    goto :goto_2

    .line 8
    :cond_5
    invoke-virtual {v0}, Lc/b/m/d/v;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lc/b/m/d/v;->c()Ljava/lang/String;

    move-result-object v1

    const-string v3, "4"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/b/h/s;->a:Lcom/emsportal/activity/SettingNotificationActivity;

    .line 9
    iget-object v1, v1, Lcom/emsportal/activity/SettingNotificationActivity;->c:Landroid/widget/Switch;

    goto :goto_2

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
