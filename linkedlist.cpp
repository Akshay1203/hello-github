#include<iostream>
using namespace std;
class list
{
	class node
	{
		public:
			int data;
			node *next;
			node (int n)
			{
				data = n;
				next=NULL;
			}
	}*listptr;
	public:
		void create();
		void display();
		void insertbeg(int);
		void insertend(int);
		void insertint(int);
		int deletebeg();
		int deleteend();
		int deleteint();
		int count();
		void search(int);
		void copybeg(list,int);
		void intersection(list);
		void unions(list);
		void sort();
};
void list::create()
{
	listptr=NULL;
	node *temp=listptr;
	int n,i,num;
	cout<<"enter the no. of node you want to enter\n";
	cin>>n;
	cout<<"enter the node\n";
	for(i=0;i<n;i++)
	{
		
		cin>>num;
		node *newnode= new node(num);
		if(listptr==NULL)
		{
		   listptr=newnode;
		   newnode->next=NULL;
		   temp=newnode;
	      }
		else
		{
			temp->next=newnode;
			newnode->next=NULL;
			temp=temp->next;
		}
	}
	
}
void list::display()
{
	node *temp;
	if(listptr==NULL)
	cout<<"List is empty\n";
	else
	{
		temp=listptr;
		do
		{
			cout<<temp->data<<"->";
			temp=temp->next;
		}while(temp->next!=NULL);
		cout<<temp->data<<"->NULL\n";
	}
}
void list::insertbeg(int a)
{
	node *temp1=listptr;
	node *newnode=new node(a);
	if(listptr==NULL)
	{
	listptr=newnode;
	newnode->next=NULL;
	}
	else
	{
		newnode->next=NULL;
		listptr=newnode;
	}
	node *temp=listptr;
	do
	{temp=temp->next;
	}while(temp->next!=temp1);
	temp->next=NULL;
	
}
void list::insertend(int a)
{
	node *temp;
	node *newnode=new node(a);
	if(listptr==NULL)
	{
	listptr=newnode;
	newnode->next=NULL;
	}
	else
	{
		temp=listptr;
		do
		{temp=temp->next;
		}while(temp->next!=NULL);
		temp->next=newnode;
		newnode->next=NULL;
	}
	
}
void list::insertint(int a)
{
	int i;
	int pos;
	cout<<"enter the position\n";
	cin>>pos;
	node *temp=listptr;
	node *newnode=new node(a);
	for(i=0;i<pos-2;i++)
	{
		temp=temp->next;
	}	
	newnode->next=temp->next;
	temp->next=newnode;
}
int list::deletebeg()
{
	int d;
	node *temp1=listptr;
	node *temp;
	temp=listptr;
	listptr=temp->next;
	d=temp->data;
	delete(temp);
	temp=listptr;
	do
	{temp=temp->next;
	}while(temp->next!=temp1);
	temp->next=NULL;
	return d;
}
int list::deleteend()
{
	int d;
	node *temp=listptr;
	do
	{temp=temp->next;
	}while(temp->next->next!=NULL);
		d=temp->next->data;
	delete (temp->next);
	temp->next=NULL; 
	return d;
}
int list::deleteint()
{
	int i,d,pos;
	node *temp=listptr;
	node *temp1;
	cout<<"Enter the position whose data you want to delete\n";
	cin>>pos;
	for(i=0;i<pos-2;i++)
	{
		temp=temp->next;
	}
	temp1=temp->next;
	temp->next=temp->next->next;
	d=temp1->data;
	delete temp1;
	return d;	
}
int list::count()
{
	node *temp=listptr;
	int c=0;
	do
	{
		c++;
		temp=temp->next;
	}while(temp!=NULL);
	return c;
}
void list::search(int a)
{
	node *temp=listptr;
	int f=0;
	int i=0;
	do{
		i++;
		if (temp->data==a)
		{
			cout<<"Number found at position:"<<i<<endl;
			f++;
		}
		temp=temp->next;
	}while(temp!=NULL);
	if(f==0)
	cout<<"Number not found\n";
}
void list::copybeg(list m,int x)
{
	node *temp;
	temp=listptr;
	m.listptr=NULL;
	int num;
	node *temp1=m.listptr;
	int i;
	for(i=0;i<x;i++)
	{
		num=temp->data;
		node *newnode= new node(num);
		if(m.listptr==NULL)
		{
		   m.listptr=newnode;
		   newnode->next=m.listptr;
		   temp1=newnode;
	      }
		else
		{
			temp1->next=newnode;
			newnode->next=m.listptr;
			temp1=temp1->next;
		}
		temp=temp->next;
	}
	temp1->next=NULL;
	cout<<"The copied list is as follows: ";
	m.display();
	
}
void list::intersection(list m)
{
	node *temp=listptr;
	node *temp1=m.listptr;
	cout<<"Intersection of the two lists is: ";
	while(temp!=NULL)
	{
		
		temp1=m.listptr;
		while(temp1!=NULL)
		{
			
			if(temp->data==temp1->data)
			cout<<temp1->data<<" ";		
			
			temp1=temp1->next;
		}
	
		temp=temp->next;
	}
	cout<<"\n";
	
}
void list::unions(list m)
{
	int c=0;
	node *temp=listptr;
	node *temp1=m.listptr;
	cout<<"Union of the two lists is: ";
	while(temp1)
	{
		cout<<temp1->data<<" ";
		temp1=temp1->next;
	}
	while(temp!=NULL)
	{
		c=0;
		temp1=m.listptr;
		while(temp1!=NULL)
		{
			
			if(temp->data==temp1->data)
			c++;		
			
			temp1=temp1->next;
		}
		if(c==0)
		cout<<temp->data<<" ";
	
		temp=temp->next;
	}
	cout<<"\n";
	
}
void list::sort()
{
	int t;
	node *temp,*temp1;
	for(temp=listptr;temp->next!=NULL;temp=temp->next)
	{
		for(temp1=temp->next;temp1!=NULL;temp1=temp1->next)
		{
			if(temp1->data<temp->data)
			{
				t=temp->data;
				temp->data=temp1->data;
				temp1->data=t;
			}
		}
	}
	return;
}
main()
{
	list l,m;
	cout<<"..........Welcome to circular linked list...........\n";
	int c,num,x;
	char ch;
	do{
	cout<<"Enter respective values to perform that task\n";
	cout<<"1.create\n2.display\n3.insert at beginning\n4.insert at end\n5.insert at intermediate position\n6.delete from beginning\n7.delete from end\n8.delete at intermediate position\n9.count the number of elements\n10.search a number\n11.copy to another list\n12.intersection\n13.union\n14.sort\n";
	cout<<"Enter your choice:\n";
	cin>>c;
	switch(c)
	{
		case 1:l.create();break;
		case 2:l.display();break;
		case 3:cout<<"Enter data you want to enter\n";
			 cin>>num;
			 l.insertbeg(num);break;
		case 4:cout<<"Enter data you want to enter\n";
			 cin>>num;
			 l.insertend(num);break;
		case 5:cout<<"Enter data you want to enter\n";
			 cin>>num;
			 l.insertint(num);break;
		case 6:x=l.deletebeg();
			 cout<<"Deleted data is: "<<x<<endl;break;	 
		case 7:x=l.deleteend();
			 cout<<"Deleted data is: "<<x<<endl;break;	 
		case 8:x=l.deleteint();
			 cout<<"Deleted data is: "<<x<<endl;break;	 
		case 9:x=l.count();
			cout<<"Total elements="<<x<<endl;break;
		case 10:cout<<"Enter number to be searched\n";
			 cin>>num;
			 l.search(num);break;
		case 11:x=l.count();
			 l.copybeg(m,x);break;
		case 12:cout<<"Enter second list:\n";
			 m.create();
			 l.intersection(m);break;
		case 13:cout<<"Enter second list:\n";
			 m.create();
			 l.unions(m);break;
		case 14:l.sort();break;	 	 
		default:cout<<"Wrong input\n";
	}
		cout<<"Do you want to continue\n(Y/N)";
		cin>>ch;
	
	}while (ch=='Y'|| ch=='y');
}

