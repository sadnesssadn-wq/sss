.class public Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;
.super Lb/m/d/l;
.source ""


# instance fields
.field private adapter:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;

.field private calendarWidgetPicker:Lcom/zoho/livechat/android/ui/listener/CalendarWidgetPicker;

.field private inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

.field private slotDate:Ljava/lang/String;

.field private slotTime:Ljava/lang/String;

.field private timeSlotList:Landroidx/recyclerview/widget/RecyclerView;

.field private toolbar:Landroidx/appcompat/widget/Toolbar;

.field private tzInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private tzParent:Landroid/widget/RelativeLayout;

.field public tzTitleView:Landroid/widget/TextView;

.field public tzView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/m/d/l;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->tzInfo:Ljava/util/Map;

    return-object p1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    new-instance v0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    invoke-direct {v0, p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getInputCard()Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getLabel()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->toolbar:Landroidx/appcompat/widget/Toolbar;

    sget v0, Lcom/zoho/livechat/android/R$string;->livechat_widgets_timeslot_button:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "timeslots"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->slotDate:Ljava/lang/String;

    new-instance v1, Lcom/zoho/livechat/android/models/WidgetDateTimeSlots;

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getTimeSlots()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/zoho/livechat/android/models/WidgetDateTimeSlots;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getDateSlots()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lcom/zoho/livechat/android/models/WidgetDateTimeSlots;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v4}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getDateSlots()Ljava/util/Hashtable;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {v2, v3, v1}, Lcom/zoho/livechat/android/models/WidgetDateTimeSlots;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_2
    new-instance v0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;

    invoke-direct {v0, p1}, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->adapter:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->timeSlotList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->timeSlotList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->adapter:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->isTz()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->tzParent:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->tzTitleView:Landroid/widget/TextView;

    sget v0, Lcom/zoho/livechat/android/R$string;->livechat_widgets_calendar_timezone:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/TimeZoneUtil;->getDefaultTimeZone()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->tzInfo:Ljava/util/Map;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->tzInfo:Ljava/util/Map;

    const-string v1, "gmt"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->tzInfo:Ljava/util/Map;

    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->tzView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->tzParent:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement$1;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement$1;-><init>(Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->tzParent:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_4
    :goto_3
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    invoke-super {p0, p1}, Lb/m/d/l;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p2

    sget v0, Lcom/zoho/livechat/android/R$menu;->siq_menu_calendar:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    sget p3, Lcom/zoho/livechat/android/R$layout;->siq_dialog_fragment_timeslot:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_dialog_toolbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_0

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const/high16 p3, 0x40e00000    # 7.0f

    invoke-static {p3}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setElevation(F)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p2

    check-cast p2, Lb/b/k/h;

    iget-object p3, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2, p3}, Lb/b/k/h;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p2

    check-cast p2, Lb/b/k/h;

    invoke-virtual {p2}, Lb/b/k/h;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/ActionBar;->o(Z)V

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/ActionBar;->s(Z)V

    sget v0, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_cancel:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/ActionBar;->r(I)V

    :cond_1
    sget p2, Lcom/zoho/livechat/android/R$id;->siq_timeslot_tz_parent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->tzParent:Landroid/widget/RelativeLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_tz_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->tzTitleView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMediumFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_tz:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->tzView:Landroid/widget/TextView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_timeslot_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->timeSlotList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/zoho/livechat/android/R$id;->siq_submit:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_7

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->slotDate:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->slotTime:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->adapter:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;->getSelection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    :cond_1
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->isTz()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->tzInfo:Ljava/util/Map;

    const-string v3, "gmt"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "tz"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->adapter:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;

    const-string v3, "timeslots"

    const-string v4, " "

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;->getSelection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->adapter:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;->getSelection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v5}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    aget-object v1, v1, v2

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    aget-object v5, v1, v5

    iput-object v5, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->slotDate:Ljava/lang/String;

    aget-object v1, v1, v2

    :goto_0
    iput-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->slotTime:Ljava/lang/String;

    :cond_4
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "slot"

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->slotTime:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->slotTime:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->slotDate:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->slotTime:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->slotDate:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->slotTime:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v0}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "value"

    invoke-virtual {p1, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->isTz()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->tzInfo:Ljava/util/Map;

    const-string v3, "tz_name"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ", "

    invoke-static {v1, v3, v0}, Lc/a/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_6
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->calendarWidgetPicker:Lcom/zoho/livechat/android/ui/listener/CalendarWidgetPicker;

    invoke-interface {v0, v1, p1}, Lcom/zoho/livechat/android/ui/listener/CalendarWidgetPicker;->onCalendarInfoPicked(Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_2

    :cond_7
    const v1, 0x102002c

    if-ne v0, v1, :cond_8

    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return v2

    :cond_8
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public setCalendarWidgetPicker(Lcom/zoho/livechat/android/ui/listener/CalendarWidgetPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->calendarWidgetPicker:Lcom/zoho/livechat/android/ui/listener/CalendarWidgetPicker;

    return-void
.end method
